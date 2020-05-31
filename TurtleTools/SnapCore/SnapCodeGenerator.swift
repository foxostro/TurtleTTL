//
//  SnapCodeGenerator.swift
//  SnapCore
//
//  Created by Andrew Fox on 5/17/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import TurtleCore
import TurtleCompilerToolbox

public class SnapCodeGenerator: NSObject, CodeGenerator {
    // Programs written in Snap store the stack pointer in data RAM at
    // addresses 0x0000 and 0x0001. This is initialized on launch to 0xffff.
    public static let kStackPointerAddressHi: UInt16 = 0x0000
    public static let kStackPointerAddressLo: UInt16 = 0x0001
    public static let kStackPointerInitialValue = 0x0000
    
    // Static storage is allocated in a region starting at this address.
    public static let kStaticStorageStartAddress: Int = 0x0010
    var staticStoragePointer = kStaticStorageStartAddress
    
    let assemblerBackEnd: AssemblerBackEnd
    public var symbols = SymbolTable()
    var patcherActions: [Patcher.Action] = []
    
    public var instructions: [Instruction] = []
    
    public private(set) var errors: [CompilerError] = []
    public var hasError:Bool {
        return errors.count != 0
    }
    
    public required init(assemblerBackEnd: AssemblerBackEnd) {
        self.assemblerBackEnd = assemblerBackEnd
        super.init()
    }
    
    public func compile(ast root: AbstractSyntaxTreeNode, base: Int) {
        do {
            try tryCompile(ast: root, base: base)
        } catch let e {
            let error = e as! CompilerError
            errors.append(error)
        }
    }
    
    func tryCompile(ast root: AbstractSyntaxTreeNode, base: Int) throws {
        instructions = []
        patcherActions = []
        assemblerBackEnd.begin()
        try insertProgramPrologue()
        try root.iterate {
            do {
                try compile(genericNode: $0)
            } catch let error as CompilerError {
                errors.append(error)
            }
        }
        insertProgramEpilogue()
        assemblerBackEnd.end()
        let resolver: (TokenIdentifier) throws -> Int = {[weak self] (identifier: TokenIdentifier) in
            let symbol = try self!.symbols.resolve(identifierToken: identifier)
            switch symbol {
            case .constantAddress(let address):
                return address.value
            case .constantWord(let word):
                return Int(word.value)
            case .staticWord(_):
                // TODO: Perhaps `MustBeCompileTimeConstantError' should be in some other namespace other than `Expression'.
                throw Expression.MustBeCompileTimeConstantError(line: identifier.lineNumber)
            }
        }
        let patcher = Patcher(inputInstructions: assemblerBackEnd.instructions,
                              resolver: resolver,
                              actions: patcherActions,
                              base: base)
        instructions = try patcher.patch()
    }
    
    // Inserts prologue code into the program, presumably at the beginning.
    // Insert a NOP at the beginning of every program because correct operation
    // of the hardware reset cycle requires this.
    // Likewise, correct operation of a program written in Snap requires some
    // inititalization to be performed before anything else occurs.
    func insertProgramPrologue() throws {
        assemblerBackEnd.nop()
        try assemblerBackEnd.li(.X, Int((SnapCodeGenerator.kStackPointerAddressHi & 0xff00) >> 8))
        try assemblerBackEnd.li(.Y, Int((SnapCodeGenerator.kStackPointerAddressHi & 0x00ff)))
        try assemblerBackEnd.li(.M, Int((SnapCodeGenerator.kStackPointerInitialValue & 0xff00) >> 8))
        try assemblerBackEnd.li(.X, Int((SnapCodeGenerator.kStackPointerAddressLo & 0xff00) >> 8))
        try assemblerBackEnd.li(.Y, Int((SnapCodeGenerator.kStackPointerAddressLo & 0x00ff)))
        try assemblerBackEnd.li(.M, Int((SnapCodeGenerator.kStackPointerInitialValue & 0x00ff)))
    }
    
    // Inserts epilogue code into the program, presumably at the end.
    func insertProgramEpilogue() {
        assemblerBackEnd.hlt()
    }
    
    func compile(genericNode: AbstractSyntaxTreeNode) throws {
        // While could use the visitor pattern here, (and indeed used to)
        // this leads to problems. There's a lot of boilerplate code, for one.
        // The visitor class must know of all subclasses ahead of time. It's
        // not really possible to have more than one visitor for the whole
        // class hierarchy. These issues make it difficult to use the same set
        // of AST nodes for two, separate parsers.
        if let node = genericNode as? LabelDeclarationNode {
            try compile(label: node)
        }
        else if let node = genericNode as? ConstantDeclaration {
            try compile(constant: node)
        }
        else if let node = genericNode as? Expression {
            try compile(expression: node)
        }
        else if let node = genericNode as? VarDeclaration {
            try compile(static: node)
        }
        else if let node = genericNode as? If {
            try compile(if: node)
        }
        else if let node = genericNode as? While {
            try compile(while: node)
        }
    }
    
    func compile(label: LabelDeclarationNode) throws {
        let name = label.identifier.lexeme
        guard symbols.exists(identifier: name) == false else {
            throw CompilerError(line: label.identifier.lineNumber,
                                 format: "label redefines existing symbol: `%@'",
                                 label.identifier.lexeme)
        }
        symbols.bindConstantAddress(identifier: name, value: assemblerBackEnd.programCounter)
    }
    
    func compile(constant: ConstantDeclaration) throws {
        let name = constant.identifier.lexeme
        guard symbols.exists(identifier: name) == false else {
            throw CompilerError(line: constant.identifier.lineNumber,
                                format: "constant redefines existing symbol: `%@'",
                                constant.identifier.lexeme)
        }
        let eval = ExpressionEvaluatorCompileTime(symbols: symbols)
        do {
            let value = try eval.evaluate(expression: constant.expression)
            symbols.bindConstantWord(identifier: name, value: UInt8(value))
        } catch _ as Expression.MustBeCompileTimeConstantError {
            symbols.bindStaticWord(identifier: name,
                                   address: allocateStaticStorage(),
                                   isMutable: false)
        }
    }
    
    func compile(static staticDeclaration: VarDeclaration) throws {
        let name = staticDeclaration.identifier.lexeme
        guard symbols.exists(identifier: name) == false else {
            throw CompilerError(line: staticDeclaration.identifier.lineNumber,
                                format: "variable redefines existing symbol: `%@'",
                                staticDeclaration.identifier.lexeme)
        }
        let address = allocateStaticStorage()
        symbols.bindStaticWord(identifier: name, address: address)
        try compile(expression: staticDeclaration.expression)
        try assemblerBackEnd.li(.U, (address & 0xff00) >> 8)
        try assemblerBackEnd.li(.V,  address & 0x00ff)
        try assemblerBackEnd.mov(.M, .A)
    }
    
    private func allocateStaticStorage(_ size: Int = 1) -> Int {
        let result = staticStoragePointer
        staticStoragePointer += size
        return result
    }
    
    func compile(expression: Expression) throws {
        let frontEnd = ExpressionCompilerFrontEnd(symbols: symbols)
        let backEnd = ExpressionCompilerBackEnd(assembler: assemblerBackEnd)
        
        let ir = try frontEnd.compile(expression: expression)
        try backEnd.compile(ir: ir)
    }
    
    func compile(if ifStmt: If) throws {
        // The way we evaluate the condition isn't very efficient. However, I
        // expect I can improve this later.
        try compile(expression: ifStmt.condition)
        if let elseBranch = ifStmt.elseBranch {
            try assemblerBackEnd.li(.B, 0)
            assemblerBackEnd.cmp()
            assemblerBackEnd.cmp()
            let labelElse = makeTempLabel()
            try setAddressToLabel(labelElse)
            assemblerBackEnd.je()
            assemblerBackEnd.nop()
            assemblerBackEnd.nop()
            try compile(genericNode: ifStmt.thenBranch)
            let labelTail = makeTempLabel()
            try setAddressToLabel(labelTail)
            assemblerBackEnd.jmp()
            assemblerBackEnd.nop()
            assemblerBackEnd.nop()
            bindLabelToProgramCounter(labelElse)
            try compile(genericNode: elseBranch)
            bindLabelToProgramCounter(labelTail)
        } else {
            try assemblerBackEnd.li(.B, 0)
            assemblerBackEnd.cmp()
            assemblerBackEnd.cmp()
            let labelTail = makeTempLabel()
            try setAddressToLabel(labelTail)
            assemblerBackEnd.je()
            assemblerBackEnd.nop()
            assemblerBackEnd.nop()
            try compile(genericNode: ifStmt.thenBranch)
            bindLabelToProgramCounter(labelTail)
        }
    }
    
    func makeTempLabel() -> String {
        return ".L\(assemblerBackEnd.programCounter)"
    }
    
    func setAddressToLabel(_ name: String) throws {
        patcherActions.append((index: assemblerBackEnd.programCounter,
                               symbol: TokenIdentifier(lineNumber: -1, lexeme: name),
                               shift: 8))
        try assemblerBackEnd.li(.X, 0xff)
        patcherActions.append((index: assemblerBackEnd.programCounter,
                               symbol: TokenIdentifier(lineNumber: -1, lexeme: name),
                               shift: 0))
        try assemblerBackEnd.li(.Y, 0xff)
    }
    
    func bindLabelToProgramCounter(_ name: String) {
        symbols.bindConstantAddress(identifier: name, value: assemblerBackEnd.programCounter)
    }
    
    func compile(while stmt: While) throws {
        // The way we evaluate the condition isn't very efficient. However, I
        // expect I can improve this later.
        let labelHead = makeTempLabel()
        bindLabelToProgramCounter(labelHead)
        try compile(expression: stmt.condition)
        try assemblerBackEnd.li(.B, 0)
        assemblerBackEnd.cmp()
        assemblerBackEnd.cmp()
        let labelTail = makeTempLabel()
        try setAddressToLabel(labelTail)
        assemblerBackEnd.je()
        assemblerBackEnd.nop()
        assemblerBackEnd.nop()
        try compile(genericNode: stmt.body)
        try setAddressToLabel(labelHead)
        assemblerBackEnd.jmp()
        assemblerBackEnd.nop()
        assemblerBackEnd.nop()
        bindLabelToProgramCounter(labelTail)
    }
}
