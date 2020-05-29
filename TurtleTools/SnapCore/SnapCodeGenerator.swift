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
        } catch let error as CompilerError {
            errors.append(error)
        } catch {
            // This catch block should be unreachable because patch()
            // only throws CompilerError. Regardless, we need it to satisfy
            // the compiler.
            errors.append(CompilerError(format: "unrecoverable error: %@", error.localizedDescription))
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
        let patcher = Patcher(inputInstructions: assemblerBackEnd.instructions,
                              symbols: symbols,
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
        else if let node = genericNode as? EvalStatement {
            try compile(eval: node)
        }
        else if let node = genericNode as? StaticDeclaration {
            try compile(static: node)
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
        let value = try eval.evaluate(expression: constant.expression)
        symbols.bindConstantWord(identifier: name, value: UInt8(value))
    }
    
    func compile(eval: EvalStatement) throws {
        try compile(expression: eval.expression)
    }
    
    func compile(static staticDeclaration: StaticDeclaration) throws {
        let name = staticDeclaration.identifier.lexeme
        guard symbols.exists(identifier: name) == false else {
            throw CompilerError(line: staticDeclaration.identifier.lineNumber,
                                format: "variable redefines existing symbol: `%@'",
                                staticDeclaration.identifier.lexeme)
        }
        let address = SnapCodeGenerator.kStaticStorageStartAddress
        symbols.bindStaticWord(identifier: name, address: address)
        try compile(expression: staticDeclaration.expression)
        try assemblerBackEnd.li(.U, (address & 0xff00) >> 8)
        try assemblerBackEnd.li(.V,  address & 0x00ff)
        try assemblerBackEnd.mov(.M, .A)
    }
    
    func compile(expression: Expression) throws {
        let frontEnd = ExpressionCompilerFrontEnd(symbols: symbols)
        let backEnd = ExpressionCompilerBackEnd(assembler: assemblerBackEnd)
        
        let ir = try frontEnd.compile(expression: expression)
        try backEnd.compile(ir: ir)
    }
}
