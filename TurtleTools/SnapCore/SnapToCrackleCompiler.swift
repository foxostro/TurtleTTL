//
//  SnapToCrackleCompiler.swift
//  SnapCore
//
//  Created by Andrew Fox on 5/31/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import TurtleCompilerToolbox
import TurtleCore

// Compiles a Snap AST to the IR language.
public class SnapToCrackleCompiler: NSObject {
    // Temporary storage is allocated in a region starting at this address.
    // These temporaries are slots for scratch memory which are treated as,
    // allocated as, pseudo-registers.
    public static let kTemporaryStorageStartAddress = 0x0010
    public static let kTemporaryStorageLength = 0x0100
    
    // Static storage is allocated in a region starting at this address.
    // The allocator is a simple bump pointer.
    public static let kStaticStorageStartAddress = kTemporaryStorageStartAddress + kTemporaryStorageLength
    
    private let kStackPointerAddress: Int = Int(CrackleToTurtleMachineCodeCompiler.kStackPointerAddressHi)
    
    public private(set) var errors: [CompilerError] = []
    public var hasError: Bool { !errors.isEmpty }
    public private(set) var instructions: [CrackleInstruction] = []
    public private(set) var mapInstructionToSource: [Int:SourceAnchor?] = [:]
    public let globalSymbols = SymbolTable()
    
    private var symbols: SymbolTable
    private let labelMaker = LabelMaker()
    private var staticStoragePointer = SnapToCrackleCompiler.kStaticStorageStartAddress
    private var currentSourceAnchor: SourceAnchor? = nil
    
    public override init() {
        symbols = RvalueExpressionCompiler.bindCompilerIntrinsics(symbols: globalSymbols)
        
        let noneType = try! symbols.resolveType(identifier: "None")
        assert(noneType.sizeof == 0)
        symbols.bind(identifier: "none", symbol: Symbol(type: noneType, offset: staticStoragePointer, storage: .staticStorage))
        
        super.init()
    }
    
    public func compile(ast: TopLevel) {
        instructions = []
        do {
            try tryCompile(ast: ast)
        } catch let e {
            errors.append(e as! CompilerError)
        }
    }
    
    private func emit(_ ins: [CrackleInstruction]) {
        let instructionsBegin = instructions.count
        instructions += ins
        let instructionsEnd = instructions.count
        if instructionsBegin < instructionsEnd {
            for i in instructionsBegin..<instructionsEnd {
                mapInstructionToSource[i] = currentSourceAnchor
            }
        }
    }
    
    private func tryCompile(ast: TopLevel) throws {
        try compile(topLevel: ast)
    }
    
    private func compile(topLevel: TopLevel) throws {
        for node in topLevel.children {
            try performDeclPass(genericNode: node)
        }
        for node in topLevel.children {
            try compile(genericNode: node)
        }
    }
    
    private func performDeclPass(genericNode: AbstractSyntaxTreeNode) throws {
        switch genericNode {
        case let node as FunctionDeclaration:
            try performDeclPass(func: node)
        case let node as StructDeclaration:
            try performDeclPass(struct: node)
        case let node as Block:
            try performDeclPass(block: node)
        case let node as Typealias:
            try performDeclPass(typealias: node)
        default:
            break
        }
    }
    
    private func performDeclPass(block: Block) throws {
        for node in block.children {
            try performDeclPass(genericNode: node)
        }
    }
    
    private func performDeclPass(func funDecl: FunctionDeclaration) throws {
        let name = funDecl.identifier.identifier
        
        guard symbols.existsAndCannotBeShadowed(identifier: name) == false else {
            throw CompilerError(sourceAnchor: funDecl.identifier.sourceAnchor,
                                message: "function redefines existing symbol: `\(name)'")
        }
        
        let functionType = try evaluateFunctionTypeExpression(funDecl.functionType)
        let typ: SymbolType = .function(functionType)
        let symbol = Symbol(type: typ, offset: 0, storage: .staticStorage)
        symbols.bind(identifier: name, symbol: symbol)
    }
    
    private func evaluateFunctionTypeExpression(_ expr: Expression) throws -> FunctionType {
        return try TypeContextTypeChecker(symbols: symbols).check(expression: expr).unwrapFunctionType()
    }
    
    private func performDeclPass(struct structDecl: StructDeclaration) throws {
        let name = structDecl.identifier.identifier
        
        let members = SymbolTable(parent: symbols)
        let fullyQualifiedStructType = StructType(name: name, symbols: members)
        symbols.bind(identifier: name, symbolType: .structType(fullyQualifiedStructType))
        
        members.enclosingFunctionName = name
        for memberDeclaration in structDecl.members {
            let memberType = try TypeContextTypeChecker(symbols: members).check(expression: memberDeclaration.memberType)
            if memberType == .structType(fullyQualifiedStructType) || memberType == .constStructType(fullyQualifiedStructType) {
                throw CompilerError(sourceAnchor: memberDeclaration.memberType.sourceAnchor, message: "a struct cannot contain itself recursively")
            }
            let symbol = Symbol(type: memberType, offset: members.storagePointer)
            members.bind(identifier: memberDeclaration.name, symbol: symbol)
            members.storagePointer += memberType.sizeof
        }
        members.parent = nil
    }
    
    private func performDeclPass(typealias expr: Typealias) throws {
        guard false == symbols.existsAsType(identifier: expr.lexpr.identifier) else {
            throw CompilerError(sourceAnchor: expr.lexpr.sourceAnchor,
                                message: "typealias redefines existing type: `\(expr.lexpr.identifier)'")
        }
        let typeChecker = RvalueExpressionTypeChecker(symbols: symbols)
        let symbolType = try typeChecker.check(expression: expr.rexpr)
        symbols.bind(identifier: expr.lexpr.identifier, symbolType: symbolType)
    }
    
    private func compile(genericNode: AbstractSyntaxTreeNode) throws {
        currentSourceAnchor = genericNode.sourceAnchor
        switch genericNode {
        case let node as VarDeclaration:
            try compile(varDecl: node)
        case let node as Expression:
            try compile(expressionStatement: node)
        case let node as If:
            try compile(if: node)
        case let node as While:
            try compile(while: node)
        case let node as ForIn:
            try compile(forIn: node)
        case let node as Block:
            try compile(block: node)
        case let node as Return:
            try compile(return: node)
        case let node as FunctionDeclaration:
            try compile(func: node)
        case let node as Impl:
            try compile(impl: node)
        case let node as Match:
            try compile(match: node)
        default:
            break
        }
    }
    
    private func compile(varDecl: VarDeclaration) throws {
        guard symbols.existsAndCannotBeShadowed(identifier: varDecl.identifier.identifier) == false else {
            throw CompilerError(sourceAnchor: varDecl.identifier.sourceAnchor,
                                format: "%@ redefines existing symbol: `%@'",
                                varDecl.isMutable ? "variable" : "constant",
                                varDecl.identifier.identifier)
        }
        
        // If the variable declaration provided an explicit type expression then
        // the type checker can determine what type it evaluates to.
        let explicitType: SymbolType?
        if let explicitTypeExpr = varDecl.explicitType {
            explicitType = try TypeContextTypeChecker(symbols: symbols).check(expression: explicitTypeExpr)
        } else {
            explicitType = nil
        }
        
        if let varDeclExpr = varDecl.expression {
            // The type of the initial value expression may be used to infer the
            // symbol type in cases where the explicit type is not specified.
            let expressionResultType = try RvalueExpressionTypeChecker(symbols: symbols).check(expression: varDeclExpr)
            
            // An explicit array type does not specify the number of array elements.
            // If the explicit type is an array type then we must examine the
            // expression result type to determine the array length.
            var symbolType: SymbolType
            switch (expressionResultType, explicitType) {
            case (.array(count: let count, elementType: _), .array(count: _, elementType: let elementType)):
                symbolType = .array(count: count, elementType: elementType)
            default:
                if let explicitType = explicitType {
                    symbolType = explicitType
                } else {
                    // Some expression types cannot be made concrete.
                    // Convert these appropriate convertible types.
                    switch expressionResultType {
                    case .compTimeInt(let a):
                        symbolType = a > 255 ? .u16 : .u8
                    case .compTimeBool:
                        symbolType = .bool
                    default:
                        symbolType = expressionResultType
                    }
                }
            }
            if !varDecl.isMutable {
                symbolType = symbolType.correspondingConstType
            }
            let symbol = try makeSymbolWithExplicitType(explicitType: symbolType, storage: varDecl.storage)
            symbols.bind(identifier: varDecl.identifier.identifier, symbol: symbol)
            
            // If the symbol is on the stack then allocate storage for it now.
            if symbol.storage == .stackStorage {
                emit([
                    .subi16(kStackPointerAddress, kStackPointerAddress, symbol.type.sizeof)
                ])
            }
            
            try compile(expression: Expression.InitialAssignment(sourceAnchor: varDecl.sourceAnchor,
                                                                 lexpr: varDecl.identifier,
                                                                 rexpr: varDeclExpr))
        } else if let explicitType = explicitType {
            let symbolType = varDecl.isMutable ? explicitType : explicitType.correspondingConstType
            let symbol = try makeSymbolWithExplicitType(explicitType: symbolType, storage: varDecl.storage)
            symbols.bind(identifier: varDecl.identifier.identifier, symbol: symbol)
            
            // If the symbol is on the stack then allocate storage for it now.
            if symbol.storage == .stackStorage {
                emit([
                    .subi16(kStackPointerAddress, kStackPointerAddress, symbol.type.sizeof)
                ])
            }
        } else {
            throw CompilerError(sourceAnchor: varDecl.identifier.sourceAnchor,
                                format: "unable to deduce type of %@ `%@'",
                                varDecl.isMutable ? "variable" : "constant",
                                varDecl.identifier.identifier)
        }
    }
    
    private func makeSymbolWithExplicitType(explicitType: SymbolType, storage: SymbolStorage) throws -> Symbol {
        let storage: SymbolStorage = (symbols.stackFrameIndex==0) ? .staticStorage : storage
        let offset = bumpStoragePointer(explicitType, storage)
        let symbol = Symbol(type: explicitType, offset: offset, storage: storage)
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
            symbols.storagePointer += size
            offset = symbols.storagePointer
        }
        return offset
    }
    
    // A statement can be a bare expression too.
    private func compile(expressionStatement node: Expression) throws {
        try compile(expression: node)
    }
    
    @discardableResult private func compile(expression: Expression) throws -> RvalueExpressionCompiler {
        currentSourceAnchor = expression.sourceAnchor
        let exprCompiler = RvalueExpressionCompiler(symbols: symbols, labelMaker: labelMaker)
        let ir = try exprCompiler.compile(expression: expression)
        emit(ir)
        return exprCompiler
    }
    
    private func compile(if stmt: If) throws {
        currentSourceAnchor = stmt.sourceAnchor
        if let elseBranch = stmt.elseBranch {
            let labelElse = labelMaker.next()
            let labelTail = labelMaker.next()
            let tempConditionResult = try compile(expression: stmt.condition).temporaryStack.pop()
            emit([
                .jz(labelElse, tempConditionResult.address)
            ])
            try compile(genericNode: stmt.thenBranch)
            emit([
                .jmp(labelTail),
                .label(labelElse),
            ])
            try compile(genericNode: elseBranch)
            emit([.label(labelTail)])
        } else {
            let labelTail = labelMaker.next()
            let tempConditionResult = try compile(expression: stmt.condition).temporaryStack.pop()
            emit([
                .jz(labelTail, tempConditionResult.address)
            ])
            try compile(genericNode: stmt.thenBranch)
            emit([
                .label(labelTail)
            ])
        }
    }
    
    private func compile(while stmt: While) throws {
        currentSourceAnchor = stmt.sourceAnchor
        let labelHead = labelMaker.next()
        let labelTail = labelMaker.next()
        emit([.label(labelHead)])
        let tempConditionResult = try compile(expression: stmt.condition).temporaryStack.pop()
        emit([
            .jz(labelTail, tempConditionResult.address)
        ])
        try compile(genericNode: stmt.body)
        emit([
            .jmp(labelHead),
            .label(labelTail)
        ])
    }
    
    private func compile(forIn stmt: ForIn) throws {
        let typeChecker = RvalueExpressionTypeChecker(symbols: symbols)
        let sequenceType = try typeChecker.check(expression: stmt.sequenceExpr)
        switch sequenceType {
        case .constStructType(let typ), .structType(let typ):
            guard typ.name == "Range" else {
                throw CompilerError(sourceAnchor: stmt.sequenceExpr.sourceAnchor, message: "for-in loop requires iterable sequence")
            }
            try compileForInRange(stmt)
        case .array, .constDynamicArray, .dynamicArray:
            try compileForInArray(stmt)
        default:
            throw CompilerError(sourceAnchor: stmt.sequenceExpr.sourceAnchor, message: "for-in loop requires iterable sequence")
        }
    }
    
    private func compileForInRange(_ stmt: ForIn) throws {
        let sequence = Expression.Identifier("__sequence")
        let limit = Expression.Identifier("__limit")
        
        let ast = Block(children: [
            VarDeclaration(identifier: sequence,
                           explicitType: nil,
                           expression: stmt.sequenceExpr,
                           storage: .stackStorage,
                           isMutable: true),
            VarDeclaration(identifier: limit,
                           explicitType: nil,
                           expression: Expression.Get(expr: sequence, member: Expression.Identifier("limit")),
                           storage: .stackStorage,
                           isMutable: false),
            VarDeclaration(identifier: stmt.identifier,
                           explicitType: nil,
                           expression: Expression.LiteralInt(0),
                           storage: .stackStorage,
                           isMutable: true),
            While(condition: Expression.Binary(op: .ne, left: stmt.identifier, right: limit),
                  body: Block(children: [
                    stmt.body,
                    Expression.Assignment(lexpr: stmt.identifier, rexpr: Expression.Binary(op: .plus, left: stmt.identifier, right: Expression.LiteralInt(1)))
                  ]))
        ])
        
        try compile(block: ast)
    }
    
    private func compileForInArray(_ stmt: ForIn) throws {
        let sequence = Expression.Identifier("__sequence")
        let index = Expression.Identifier("__index")
        let limit = Expression.Identifier("__limit")
        
        let ast = Block(children: [
            VarDeclaration(identifier: sequence,
                           explicitType: nil,
                           expression: stmt.sequenceExpr,
                           storage: .stackStorage,
                           isMutable: false),
            VarDeclaration(identifier: index,
                           explicitType: nil,
                           expression: Expression.LiteralInt(0),
                           storage: .stackStorage,
                           isMutable: true),
            VarDeclaration(identifier: limit,
                           explicitType: nil,
                           expression: Expression.Get(expr: sequence, member: Expression.Identifier("count")),
                           storage: .stackStorage,
                           isMutable: false),
            VarDeclaration(identifier: stmt.identifier,
                           explicitType: Expression.PrimitiveType(try RvalueExpressionTypeChecker(symbols: symbols).check(expression: stmt.sequenceExpr).arrayElementType),
                           expression: nil,
                           storage: .stackStorage,
                           isMutable: true),
            While(condition: Expression.Binary(op: .ne, left: index, right: limit),
                  body: Block(children: [
                    Expression.Assignment(lexpr: stmt.identifier, rexpr: Expression.Subscript(identifier: sequence, expr: index)),
                    stmt.body,
                    Expression.Assignment(lexpr: index, rexpr: Expression.Binary(op: .plus, left: index, right: Expression.LiteralInt(1))),
                  ]))
        ])
        
        try compile(block: ast)
    }
    
    private func compile(block: Block) throws {
        currentSourceAnchor = block.sourceAnchor
        pushScopeForBlock()
        try performDeclPass(block: block)
        for child in block.children {
            try compile(genericNode: child)
        }
        popScopeForBlock()
    }
    
    private func pushScopeForBlock() {
        symbols = SymbolTable(parent: symbols)
    }
    
    private func popScopeForBlock() {
        let storagePointer = symbols.storagePointer
        symbols = symbols.parent!
        symbols.storagePointer = storagePointer
    }
    
    private func compile(return node: Return) throws {
        guard let enclosingFunctionType = symbols.enclosingFunctionType else {
            throw CompilerError(sourceAnchor: node.sourceAnchor, message: "return is invalid outside of a function")
        }
        
        if let expr = node.expression {
            if enclosingFunctionType.returnType == .void {
                throw CompilerError(sourceAnchor: node.expression?.sourceAnchor ?? node.sourceAnchor,
                                    message: "unexpected non-void return value in void function")
            }
            
            // Synthesize an assignment to the special return value symbol.
            let kReturnValueIdentifier = "__returnValue"
            let typeChecker = RvalueExpressionTypeChecker(symbols: symbols)
            let returnExpressionType = try typeChecker.check(expression: expr)
            try typeChecker.checkTypesAreConvertibleInAssignment(ltype: enclosingFunctionType.returnType,
                                                                 rtype: returnExpressionType,
                                                                 sourceAnchor: node.sourceAnchor,
                                                                 messageWhenNotConvertible: "cannot convert return expression of type `\(returnExpressionType)' to return type `\(enclosingFunctionType.returnType)'")
            let lexpr = Expression.Identifier(sourceAnchor: node.sourceAnchor, identifier: kReturnValueIdentifier)
            try compile(expression: Expression.Assignment(sourceAnchor: node.sourceAnchor, lexpr: lexpr, rexpr: expr))
        } else if .void != enclosingFunctionType.returnType {
            throw CompilerError(sourceAnchor: node.sourceAnchor, message: "non-void function should return a value")
        }
        
        currentSourceAnchor = node.sourceAnchor
        emit([
            .leave,
            .ret
        ])
    }
    
    private func compile(func node: FunctionDeclaration) throws {
        currentSourceAnchor = node.sourceAnchor
        
        let functionType = try evaluateFunctionTypeExpression(node.functionType)
        
        let mangledName = functionType.mangledName!
        let labelHead = mangledName
        let labelTail = "__\(mangledName)_tail"
        emit([
            .jmp(labelTail),
            .label(labelHead),
            .pushReturnAddress,
            .enter
        ])

        pushScopeForNewStackFrame(enclosingFunctionName: node.identifier.identifier,
                                  enclosingFunctionType: functionType)
        bindFunctionArguments(functionType)
        try performDeclPass(block: node.body)
        try expectFunctionReturnExpressionIsCorrectType(func: node)
        for child in node.body.children {
            try compile(genericNode: child)
        }
        if try shouldSynthesizeTerminalReturnStatement(func: node) {
            try compile(return: Return(sourceAnchor: node.sourceAnchor, expression: nil))
        }
        popScopeForStackFrame()
        
        emit([
            .label(labelTail),
        ])
    }
    
    private func compile(impl: Impl) throws {
        let typ = try symbols.resolveType(identifier: impl.identifier.identifier).unwrapStructType()
        
        // For the moment, make the struct symbol table the local scope.
        typ.symbols.parent = symbols
        symbols = typ.symbols
        
        for child in impl.children {
            try performDeclPass(func: child)
        }
        
        for child in impl.children {
            try compile(func: child)
        }
        
        // Pop scopes and restore the struct symbol table.
        let storagePointer = symbols.storagePointer
        symbols = symbols.parent!
        symbols.storagePointer = storagePointer
        typ.symbols.parent = nil
    }
    
    private func compile(match: Match) throws {
        let ast = try MatchCompiler().compile(match: match, symbols: symbols)
        try compile(genericNode: ast)
    }
    
    private func pushScopeForNewStackFrame(enclosingFunctionName: String,
                                           enclosingFunctionType: FunctionType) {
        symbols = SymbolTable(parent: symbols)
        symbols.storagePointer = 0
        symbols.stackFrameIndex += 1
        symbols.enclosingFunctionName = enclosingFunctionName
        symbols.enclosingFunctionType = enclosingFunctionType
    }
    
    private func popScopeForStackFrame() {
        symbols = symbols.parent!
    }
    
    private func bindFunctionArguments(_ typ: FunctionType) {
        let kReturnAddressSize = 2
        let kFramePointerSize = 2
        var offset = kReturnAddressSize + kFramePointerSize
        
        for i in (0..<typ.arguments.count).reversed() {
            let argument = typ.arguments[i]
            let symbol = Symbol(type: argument.argumentType.correspondingConstType,
                                offset: -offset,
                                storage: .stackStorage)
            symbols.bind(identifier: argument.name, symbol: symbol)
            offset += argument.argumentType.sizeof
        }
        
        // Bind a special symbol to contain the function return value.
        // This must be located just before the function arguments.
        let kReturnValueIdentifier = "__returnValue"
        symbols.bind(identifier: kReturnValueIdentifier,
                     symbol: Symbol(type: typ.returnType, // TODO: This is probably not going to behave as expected if we mark the function return type as "const".
                                    offset: -offset,
                                    storage: .stackStorage))
        offset += typ.returnType.sizeof
    }
    
    private func expectFunctionReturnExpressionIsCorrectType(func node: FunctionDeclaration) throws {
        let functionType = try evaluateFunctionTypeExpression(node.functionType)
        let tracer = StatementTracer(symbols: symbols)
        let traces = try tracer.trace(ast: node.body)
        for trace in traces {
            if let last = trace.last {
                switch last {
                case .Return:
                    break
                default:
                    if functionType.returnType != .void {
                        throw makeErrorForMissingReturn(node)
                    }
                }
            } else if functionType.returnType != .void {
                throw makeErrorForMissingReturn(node)
            }
        }
    }
    
    private func makeErrorForMissingReturn(_ node: FunctionDeclaration) -> CompilerError {
        let functionType = try! evaluateFunctionTypeExpression(node.functionType)
        return CompilerError(sourceAnchor: node.identifier.sourceAnchor,
                             message: "missing return in a function expected to return `\(functionType.returnType)'")
    }
    
    private func shouldSynthesizeTerminalReturnStatement(func node: FunctionDeclaration) throws -> Bool {
        let functionType = try evaluateFunctionTypeExpression(node.functionType)
        guard functionType.returnType == .void else {
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
