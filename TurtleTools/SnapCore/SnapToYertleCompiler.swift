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
    public static let kReturnValueScratchLocation = 0x0004
    
    public override init() {
        symbols = globalSymbols
        super.init()
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
        for node in ast.children {
            try compile(genericNode: node)
        }
    }
    
    private func compile(genericNode: AbstractSyntaxTreeNode) throws {
        if let node = genericNode as? VarDeclaration {
            try compile(varDecl: node)
        }
        else if let node = genericNode as? Expression {
            try compile(expression: node)
            instructions += [.pop]
        }
        else if let node = genericNode as? If {
            try compile(if: node)
        }
        else if let node = genericNode as? While {
            try compile(while: node)
        }
        else if let node = genericNode as? ForLoop {
            try compile(forLoop: node)
        }
        else if let node = genericNode as? Block {
            try compile(block: node)
        }
        else if let node = genericNode as? Return {
            try compile(return: node)
        }
        else if let node = genericNode as? FunctionDeclaration {
            try compile(func: node)
        }
    }
    
    private func compile(varDecl: VarDeclaration) throws {
        let name = varDecl.identifier.lexeme
        guard symbols.exists(identifier: name) == false else {
            throw CompilerError(line: varDecl.identifier.lineNumber,
                                format: "%@ redefines existing symbol: `%@'",
                                varDecl.isMutable ? "variable" : "constant",
                                varDecl.identifier.lexeme)
        }
        let symbol = try makeSymbolWithInferredType(expression: varDecl.expression, storage: varDecl.storage, isMutable: varDecl.isMutable)
        symbols.bind(identifier: name, symbol: symbol)
        try compile(expression: varDecl.expression)
        storeSymbol(symbol)
    }
    
    private func makeSymbolWithInferredType(expression: Expression, storage: SymbolStorage, isMutable: Bool) throws -> Symbol {
        let inferredType = try ExpressionTypeChecker(symbols: symbols).check(expression: expression)
        let storage: SymbolStorage = isInGlobalScope ? .staticStorage : storage
        
        let offset: Int
        switch storage {
        case .staticStorage:
            offset = staticStoragePointer
            staticStoragePointer += 1
        case .stackStorage:
            offset = symbols.storagePointer
            symbols.storagePointer += 1
        }
        
        let symbol = Symbol(type: inferredType, offset: offset, isMutable: isMutable, storage: storage)
        return symbol
    }
    
    private func storeSymbol(_ symbol: Symbol) {
        switch symbol.storage {
        case .staticStorage:
            switch symbol.type {
            case .bool, .u8:
                instructions += [
                    .store(symbol.offset),
                    .pop
                ]
            case .function, .void:
                abort()
            }
        case .stackStorage:
            break
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
        for child in block.children {
            try compile(genericNode: child)
        }
        popScope()
    }
    
    private func pushScope() {
        symbols = SymbolTable(parent: symbols)
        symbols.storagePointer = 1
    }
    
    private func popScope() {
        assert(!isInGlobalScope)
        symbols = symbols.parent!
    }
    
    private var isInGlobalScope: Bool {
        return symbols.parent == nil
    }
    
    private func compile(return node: Return) throws {
        if let expr = node.expression {
            try compile(expression: expr)
        }
        if nil != node.expression {
            instructions += [
                .store(SnapToYertleCompiler.kReturnValueScratchLocation)
            ]
        }
        instructions += [
            .leave,
            .ret
        ]
    }
    
    private func compile(func node: FunctionDeclaration) throws {
        try expectFunctionReturnExpressionIsCorrectType(func: node)
        
        let name = node.identifier.lexeme
        let symbol = Symbol(type: .function(node.functionType), offset: 0x0000, isMutable: false, storage: .staticStorage)
        symbols.bind(identifier: name, symbol: symbol)
        
        let labelHead = TokenIdentifier(lineNumber: -1, lexeme: name)
        let labelTail = TokenIdentifier(lineNumber: -1, lexeme: "\(name)_tail")
        instructions += [
            .jmp(labelTail),
            .label(labelHead),
            .pushReturnAddress,
            .enter
        ]
        
        try compile(block: node.body)
        
        if shouldSynthesizeTerminalReturnStatement(func: node) {
            try compile(return: Return(token: TokenReturn(lineNumber: -1, lexeme: ""), expression: nil))
        }
        
        instructions += [
            .label(labelTail),
        ]
    }
    
    private func expectFunctionReturnExpressionIsCorrectType(func node: FunctionDeclaration) throws {
        let tracer = StatementTracer(symbols: symbols)
        let traces = try tracer.trace(ast: node.body)
        for trace in traces {
            if let last = trace.last {
                switch last {
                case .Return(let token, let returnExpressionType):
                    if returnExpressionType != node.functionType.returnType {
                        throw makeErrorForReturnExpressionTypeError(returnToken: token,
                                                                    actual: returnExpressionType,
                                                                    expected: node.functionType.returnType)
                    }
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
                             String(describing: node.functionType.returnType))
    }
    
    private func makeErrorForReturnExpressionTypeError(returnToken: Token,
                                                       actual: SymbolType,
                                                       expected: SymbolType) -> CompilerError {
        if actual == .void {
            return CompilerError(line: returnToken.lineNumber, message: "non-void function should return a value")
        }
        return CompilerError(line: returnToken.lineNumber,
                             format: "cannot convert return expression of type `%@' to return type `%@'",
                             String(describing: actual),
                             String(describing: expected))
    }
    
    private func shouldSynthesizeTerminalReturnStatement(func node: FunctionDeclaration) -> Bool {
        let tracer = StatementTracer(symbols: symbols)
        let traces = try! tracer.trace(ast: node.body)
        for trace in traces {
            if let last = trace.last {
                switch last {
                case .Return(_, _):
                    break
                default:
                    if node.functionType.returnType != .void {
                        return false
                    }
                }
            }
        }
        return true
    }
}
