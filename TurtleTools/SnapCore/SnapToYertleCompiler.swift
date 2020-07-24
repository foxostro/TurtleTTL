//
//  SnapToYertleCompiler.swift
//  SnapCore
//
//  Created by Andrew Fox on 5/31/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import TurtleCompilerToolbox

// Compiles a Snap AST to the Yertle intermediate language.
public class SnapToYertleCompiler: NSObject {
    public private(set) var errors: [CompilerError] = []
    public var hasError:Bool { !errors.isEmpty }
    public private(set) var instructions: [YertleInstruction] = []
    public let globalSymbols = SymbolTable()
    
    private var symbols: SymbolTable
    private var tempLabelCounter = 0
    private var staticStoragePointer = SnapToYertleCompiler.kStaticStorageStartAddress
    public static let kReturnValueScratchLocation = 0x0005
    
    public override init() {
        symbols = globalSymbols
        super.init()
        bindCompilerInstrinsicPeekMemory()
        bindCompilerInstrinsicPokeMemory()
        bindCompilerInstrinsicPeekPeripheral()
        bindCompilerInstrinsicPokePeripheral()
    }
    
    private func bindCompilerInstrinsicPeekMemory() {
        let functionType = FunctionType(returnType: .u8, arguments: [FunctionType.Argument(name: "address", type: .u16)])
        let name = TokenIdentifier(lineNumber: -1, lexeme: "peekMemory")
        let typ: SymbolType = .function(name: name.lexeme, mangledName: name.lexeme, functionType: functionType)
        let symbol = Symbol(type: typ, offset: 0x0000, isMutable: false, storage: .staticStorage)
        symbols.bind(identifier: name.lexeme, symbol: symbol)
    }
    
    private func bindCompilerInstrinsicPokeMemory() {
        let functionType = FunctionType(returnType: .void, arguments: [FunctionType.Argument(name: "value", type: .u8), FunctionType.Argument(name: "address", type: .u16)])
        let name = TokenIdentifier(lineNumber: -1, lexeme: "pokeMemory")
        let typ: SymbolType = .function(name: name.lexeme, mangledName: name.lexeme, functionType: functionType)
        let symbol = Symbol(type: typ, offset: 0x0000, isMutable: false, storage: .staticStorage)
        symbols.bind(identifier: name.lexeme, symbol: symbol)
    }
    
    private func bindCompilerInstrinsicPeekPeripheral() {
        let functionType = FunctionType(returnType: .u8, arguments: [FunctionType.Argument(name: "address", type: .u16), FunctionType.Argument(name: "device", type: .u8)])
        let name = TokenIdentifier(lineNumber: -1, lexeme: "peekPeripheral")
        let typ: SymbolType = .function(name: name.lexeme, mangledName: name.lexeme, functionType: functionType)
        let symbol = Symbol(type: typ, offset: 0x0000, isMutable: false, storage: .staticStorage)
        symbols.bind(identifier: name.lexeme, symbol: symbol)
    }
    
    private func bindCompilerInstrinsicPokePeripheral() {
        let functionType = FunctionType(returnType: .void, arguments: [FunctionType.Argument(name: "value", type: .u8), FunctionType.Argument(name: "address", type: .u16), FunctionType.Argument(name: "device", type: .u8)])
        let name = TokenIdentifier(lineNumber: -1, lexeme: "pokePeripheral")
        let typ: SymbolType = .function(name: name.lexeme, mangledName: name.lexeme, functionType: functionType)
        let symbol = Symbol(type: typ, offset: 0x0000, isMutable: false, storage: .staticStorage)
        symbols.bind(identifier: name.lexeme, symbol: symbol)
    }
    
    // The generated program will need unique, temporary labels.
    private func makeTempLabel() -> TokenIdentifier {
        let label = ".L\(tempLabelCounter)"
        tempLabelCounter += 1
        return TokenIdentifier(lineNumber: -1, lexeme: label)
    }
    
    // Static storage is allocated in a region starting at this address.
    // The allocator is a simple bump pointer.
    public static let kStaticStorageStartAddress: Int = 0x0010
    
    public func compile(ast: TopLevel) {
        instructions = []
        do {
            try tryCompile(ast: ast)
        } catch let e {
            errors.append(e as! CompilerError)
        }
    }
    
    private func tryCompile(ast: TopLevel) throws {
        try compile(topLevel: ast)
    }
    
    private func compile(topLevel: TopLevel) throws {
        for node in topLevel.children {
            performDeclPass(genericNode: node)
        }
        for node in topLevel.children {
            try compile(genericNode: node)
        }
    }
    
    private func performDeclPass(genericNode: AbstractSyntaxTreeNode) {
        switch genericNode {
        case let node as FunctionDeclaration:
            performDeclPass(func: node)
        case let node as Block:
            performDeclPass(block: node)
        default:
            break
        }
    }
    
    private func performDeclPass(block: Block) {
        for node in block.children {
            performDeclPass(genericNode: node)
        }
    }
    
    private func performDeclPass(func funDecl: FunctionDeclaration) {
        let name = funDecl.identifier.lexeme
        let mangledName = makeMangledFunctionName(funDecl)
        let typ: SymbolType = .function(name: name, mangledName: mangledName, functionType: funDecl.functionType)
        let symbol = Symbol(type: typ, offset: 0x0000, isMutable: false, storage: .staticStorage)
        symbols.bind(identifier: name, symbol: symbol)
    }
    
    private func makeMangledFunctionName(_ node: FunctionDeclaration) -> String {
        let name = Array(NSOrderedSet(array: symbols.allEnclosingFunctionNames() + [node.identifier.lexeme])).map{$0 as! String}.joined(separator: "_")
        return name
    }
    
    private func compile(genericNode: AbstractSyntaxTreeNode) throws {
        switch genericNode {
        case let node as VarDeclaration:
            try compile(varDecl: node)
        case let node as Expression:
            try compile(expressionStatement: node)
        case let node as If:
            try compile(if: node)
        case let node as While:
            try compile(while: node)
        case let node as ForLoop:
            try compile(forLoop: node)
        case let node as Block:
            try compile(block: node)
        case let node as Return:
            try compile(return: node)
        case let node as FunctionDeclaration:
            try compile(func: node)
        default:
            break
        }
    }
    
    private func compile(varDecl: VarDeclaration) throws {
        let name = varDecl.identifier.lexeme
        guard symbols.existsAndCannotBeShadowed(identifier: name) == false else {
            throw CompilerError(line: varDecl.identifier.lineNumber,
                                format: "%@ redefines existing symbol: `%@'",
                                varDecl.isMutable ? "variable" : "constant",
                                varDecl.identifier.lexeme)
        }
        
        // The type of the initial value expression may be used to infer the
        // symbol type in cases where the explicit type is not specified.
        let expressionResultType = try ExpressionTypeChecker(symbols: symbols).check(expression: varDecl.expression)
        
        // An explicit array type does not specify the number of array elements.
        // If the explicit type is an array type then we must examine the
        // expression result type to determine the array length.
        let symbolType: SymbolType
        switch (expressionResultType, varDecl.explicitType) {
        case (.array(count: let count, elementType: _), .array(count: _, elementType: let elementType)):
            symbolType = .array(count: count, elementType: elementType)
        default:
            if let explicitType = varDecl.explicitType {
                symbolType = explicitType
            } else {
                // Some expression types cannot be made concrete.
                // Convert these appropriate convertible types.
                switch expressionResultType {
                case .constInt(let a):
                    symbolType = a > 255 ? .u16 : .u8
                case .constBool:
                    symbolType = .bool
                default:
                    symbolType = expressionResultType
                }
            }
        }
        let symbol = try makeSymbolWithExplicitType(explicitType: symbolType, storage: varDecl.storage, isMutable: varDecl.isMutable)
        symbols.bind(identifier: name, symbol: symbol)
        
        try compile(expression: Expression.InitialAssignment(identifier: varDecl.identifier,
                                                             expression: varDecl.expression))
                                                             
        storeSymbol(symbol)
    }
    
    private func makeSymbolWithExplicitType(explicitType: SymbolType, storage: SymbolStorage, isMutable: Bool) throws -> Symbol {
        let storage: SymbolStorage = (symbols.stackFrameIndex==0) ? .staticStorage : storage
        let offset = bumpStoragePointer(explicitType, storage)
        let symbol = Symbol(type: explicitType, offset: offset, isMutable: isMutable, storage: storage)
        return symbol
    }
    
    private func bumpStoragePointer(_ symbolType: SymbolType, _ storage: SymbolStorage) -> Int {
        let size = symbolType.sizeof
        let offset: Int
        switch storage {
        case .staticStorage:
            offset = staticStoragePointer
            staticStoragePointer += size
        case .stackStorage:
            offset = symbols.storagePointer
            symbols.storagePointer += size
        }
        return offset
    }
    
    private func storeSymbol(_ symbol: Symbol) {
        switch symbol.storage {
        case .staticStorage:
            storeStaticValue(symbolType: symbol.type, offset: symbol.offset)
        case .stackStorage:
            // Evaluation of the expression has left the stack symbol's value
            // on the stack already. Nothing to do here.
            break
        }
    }
    
    private func storeStaticValue(symbolType: SymbolType, offset: Int) {
        switch symbolType {
        case .u16:
            instructions += [
                .store16(offset),
                .pop16
            ]
        case .bool, .u8:
            instructions += [
                .store(offset),
                .pop
            ]
        case .array(count: let count, elementType: let elementType):
            let n = count!
            let length = n*elementType.sizeof
            for i in 0..<n {
                storeStaticValue(symbolType: elementType, offset: offset + length - (i+1)*elementType.sizeof)
            }
        default:
            abort()
        }
    }
    
    // A statement can be a bare expression. The expression value is popped
    // from the stack at the end.
    private func compile(expressionStatement node: Expression) throws {
        try compile(expression: node)
        let returnExpressionType = try ExpressionTypeChecker(symbols: symbols).check(expression: node)
        switch returnExpressionType {
        case .u16:
            instructions += [.pop16]
        case .u8, .bool, .constBool:
            instructions += [.pop]
        case .constInt(let a):
            instructions += [a > 255 ? .pop16 : .pop]
        case .void:
            break
        default:
            abort()
        }
    }
    
    // The expression will push the result onto the stack. The client assumes the
    // responsibility of cleaning up.
    private func compile(expression: Expression) throws {
        let exprCompiler = ExpressionSubCompiler(symbols: symbols)
        let ir = try exprCompiler.compile(expression: expression)
        instructions += ir
    }
    
    private func compile(if stmt: If) throws {
        if let elseBranch = stmt.elseBranch {
            let labelElse = makeTempLabel()
            let labelTail = makeTempLabel()
            try compile(expression: stmt.condition)
            instructions += [
                .push(0),
                .je(labelElse),
            ]
            try compile(genericNode: stmt.thenBranch)
            instructions += [
                .jmp(labelTail),
                .label(labelElse),
            ]
            try compile(genericNode: elseBranch)
            instructions += [.label(labelTail)]
        } else {
            let labelTail = makeTempLabel()
            try compile(expression: stmt.condition)
            instructions += [
                .push(0),
                .je(labelTail)
            ]
            try compile(genericNode: stmt.thenBranch)
            instructions += [.label(labelTail)]
        }
    }
    
    private func compile(while stmt: While) throws {
        let labelHead = makeTempLabel()
        let labelTail = makeTempLabel()
        instructions += [.label(labelHead)]
        try compile(expression: stmt.condition)
        instructions += [
            .push(0),
            .je(labelTail)
        ]
        try compile(genericNode: stmt.body)
        instructions += [
            .jmp(labelHead),
            .label(labelTail)
        ]
    }
    
    private func compile(forLoop stmt: ForLoop) throws {
        let labelHead = makeTempLabel()
        let labelTail = makeTempLabel()
        try compile(genericNode: stmt.initializerClause)
        instructions += [.label(labelHead)]
        try compile(expression: stmt.conditionClause)
        instructions += [
            .push(0),
            .je(labelTail)
        ]
        try compile(genericNode: stmt.body)
        try compile(genericNode: stmt.incrementClause)
        instructions += [
            .jmp(labelHead),
            .label(labelTail)
        ]
    }
    
    private func compile(block: Block) throws {
        pushScope()
        performDeclPass(block: block)
        for child in block.children {
            try compile(genericNode: child)
        }
        popScope()
    }
    
    private func pushScope() {
        symbols = SymbolTable(parent: symbols)
    }
    
    private func popScope() {
        symbols = symbols.parent!
    }
    
    private func compile(return node: Return) throws {
        guard let enclosingFunctionType = symbols.enclosingFunctionType else {
            throw CompilerError(line: node.token.lineNumber, message: "return is invalid outside of a function")
        }
        if let expr = node.expression {
            let returnExpressionType = try ExpressionTypeChecker(symbols: symbols).check(expression: expr)
            switch (returnExpressionType, enclosingFunctionType.returnType) {
            case (.void, .void):
                try compile(expression: expr)
                instructions += [.store(SnapToYertleCompiler.kReturnValueScratchLocation)]
            case (.bool, .bool), (.constBool, .bool):
                try compile(expression: expr)
                instructions += [.store(SnapToYertleCompiler.kReturnValueScratchLocation)]
            case (.u8, .u8):
                try compile(expression: expr)
                instructions += [.store(SnapToYertleCompiler.kReturnValueScratchLocation)]
            case (.u8, .u16):
                try compile(expression: expr)
                instructions += [.push(0), .store16(SnapToYertleCompiler.kReturnValueScratchLocation)]
            case (.u16, .u16):
                try compile(expression: expr)
                instructions += [.store16(SnapToYertleCompiler.kReturnValueScratchLocation)]
            case (.constInt(let a), .u8):
                instructions += [
                    .push(a),
                    .store(SnapToYertleCompiler.kReturnValueScratchLocation)
                ]
            case (.constInt(let a), .u16):
                instructions += [
                    .push16(a),
                    .store16(SnapToYertleCompiler.kReturnValueScratchLocation)
                ]
            default:
                throw CompilerError(line: node.token.lineNumber,
                                    format: "cannot convert return expression of type `%@' to return type `%@'",
                                    returnExpressionType.description,
                                    enclosingFunctionType.returnType.description)
            }
        } else if .void != enclosingFunctionType.returnType {
            throw CompilerError(line: node.token.lineNumber, message: "non-void function should return a value")
        }
        instructions += [
            .leave,
            .ret
        ]
    }
    
    private func compile(func node: FunctionDeclaration) throws {
        try expectFunctionReturnExpressionIsCorrectType(func: node)
        
        let mangledName = makeMangledFunctionName(node)
        let labelHead = TokenIdentifier(lineNumber: -1, lexeme: mangledName)
        let labelTail = TokenIdentifier(lineNumber: -1, lexeme: "__\(mangledName)_tail")
        instructions += [
            .jmp(labelTail),
            .label(labelHead),
            .pushReturnAddress,
            .enter
        ]
        
        pushScopeForNewStackFrame(enclosingFunctionName: node.identifier.lexeme,
                                  enclosingFunctionType: node.functionType)
        bindFunctionArguments(node.functionType.arguments)
        performDeclPass(block: node.body)
        for child in node.body.children {
            try compile(genericNode: child)
        }
        if shouldSynthesizeTerminalReturnStatement(func: node) {
            try compile(return: Return(token: TokenReturn(lineNumber: -1, lexeme: ""), expression: nil))
        }
        popScope()
        
        instructions += [
            .label(labelTail),
        ]
    }
    
    private func pushScopeForNewStackFrame(enclosingFunctionName: String,
                                           enclosingFunctionType: FunctionType) {
        pushScope()
        symbols.storagePointer = 1
        symbols.stackFrameIndex += 1
        symbols.enclosingFunctionName = enclosingFunctionName
        symbols.enclosingFunctionType = enclosingFunctionType
    }
    
    private func bindFunctionArguments(_ arguments: [FunctionType.Argument]) {
        let kReturnAddressSize = 2
        let kFramePointerSize = 2
        var offset = kReturnAddressSize + kFramePointerSize
        for i in 0..<arguments.count {
            let argument = arguments[i]
            let symbol = Symbol(type: argument.argumentType,
                                offset: -offset,
                                isMutable: false,
                                storage: .stackStorage)
            symbols.bind(identifier: argument.name, symbol: symbol)
            let argSize: Int
            switch argument.argumentType {
            case .u16: argSize = 2
            case .u8, .bool: argSize = 1
            default:
                abort()
            }
            offset += argSize
        }
    }
    
    private func expectFunctionReturnExpressionIsCorrectType(func node: FunctionDeclaration) throws {
        let tracer = StatementTracer(symbols: symbols)
        let traces = try tracer.trace(ast: node.body)
        for trace in traces {
            if let last = trace.last {
                switch last {
                case .Return:
                    break
                default:
                    if node.functionType.returnType != .void {
                        throw makeErrorForMissingReturn(node)
                    }
                }
            } else if node.functionType.returnType != .void {
                throw makeErrorForMissingReturn(node)
            }
        }
    }
    
    private func makeErrorForMissingReturn(_ node: FunctionDeclaration) -> CompilerError {
        return CompilerError(line: node.identifier.lineNumber,
                             format: "missing return in a function expected to return `%@'",
                             node.functionType.returnType.description)
    }
    
    private func shouldSynthesizeTerminalReturnStatement(func node: FunctionDeclaration) -> Bool {
        guard node.functionType.returnType == .void else {
            return false
        }
        let tracer = StatementTracer(symbols: symbols)
        let traces = try! tracer.trace(ast: node.body)
        var allTracesEndInReturnStatement = true
        for trace in traces {
            if let last = trace.last {
                switch last {
                case .Return:
                    break
                default:
                    allTracesEndInReturnStatement = false
                }
            } else {
                allTracesEndInReturnStatement = false
            }
        }
        return !allTracesEndInReturnStatement
    }
}
