//
//  SnapCodeGeneratorTests.swift
//  SnapCoreTests
//
//  Created by Andrew Fox on 5/17/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import XCTest
import SnapCore
import TurtleCompilerToolbox
import TurtleSimulatorCore
import TurtleCore

class SnapCodeGeneratorTests: XCTestCase {
    let isVerboseLogging = false
    let kStackPointerAddressHi: UInt16 = 0x0000
    let kStackPointerAddressLo: UInt16 = 0x0001
    let kStackPointerInitialValue = 0x0000
    var kProgramPrologue = ""
    let kProgramEpilogue = "HLT"
    
    var microcodeGenerator: MicrocodeGenerator!
    
    func execute(instructions: [Instruction]) -> Computer {
        let computer = makeComputer()
        computer.provideInstructions(instructions)
        XCTAssertNoThrow(try computer.runUntilHalted())
        return computer
    }
    
    func makeComputer() -> Computer {
        let computer = Computer()
        let microcodeGenerator = MicrocodeGenerator()
        microcodeGenerator.generate()
        computer.provideMicrocode(microcode: microcodeGenerator.microcode)
        computer.logger = makeLogger()
        return computer
    }
    
    func makeLogger() -> Logger {
        return isVerboseLogging ? ConsoleLogger() : NullLogger()
    }
    
    override func setUp() {
        microcodeGenerator = MicrocodeGenerator()
        microcodeGenerator.generate()
        
        kProgramPrologue = """
NOP
LI X, \((kStackPointerAddressHi & 0xff00) >> 8)
LI Y, \((kStackPointerAddressHi & 0x00ff))
LI M, \((kStackPointerInitialValue & 0xff00) >> 8)
LI X, \((kStackPointerAddressLo & 0xff00) >> 8)
LI Y, \((kStackPointerAddressLo & 0x00ff))
LI M, \((kStackPointerInitialValue & 0x00ff))
"""
    }
    
    func disassemble(_ instructions: [Instruction]) -> String {
        var result = ""
        let formatter = InstructionFormatter(microcodeGenerator: microcodeGenerator)
        if let instruction = instructions.first {
            result += formatter.makeInstructionWithDisassembly(instruction: instruction).disassembly ?? instruction.description
        }
        for instruction in instructions[1..<instructions.count] {
            result += "\n"
            result += formatter.makeInstructionWithDisassembly(instruction: instruction).disassembly ?? instruction.description
        }
        return result
    }
    
    func mustCompile(_ root: AbstractSyntaxTreeNode) -> [Instruction] {
        let codeGenerator = makeCodeGenerator()
        codeGenerator.compile(ast: root, base: 0x0000)
        if codeGenerator.hasError {
            XCTFail()
        }
        return codeGenerator.instructions
    }
    
    func mustFailToCompile(_ root: AbstractSyntaxTreeNode) -> [CompilerError] {
        let codeGenerator = makeCodeGenerator()
        codeGenerator.compile(ast: root, base: 0x0000)
        if !codeGenerator.hasError {
            XCTFail()
        }
        return codeGenerator.errors
    }
    
    func makeCodeGenerator(symbols: SymbolTable = [:]) -> SnapCodeGenerator {
        let assemblerBackEnd = AssemblerBackEnd(microcodeGenerator: microcodeGenerator)
        let codeGenerator = SnapCodeGenerator(assemblerBackEnd: assemblerBackEnd)
        codeGenerator.symbols = symbols
        return codeGenerator
    }
    
    // Tacks the program epilogue and prologue onto the given assembly code.
    func makeExpectedProgram(_ userProgram: String) -> String {
        if userProgram == "" {
            return kProgramPrologue + "\n" + kProgramEpilogue
        } else {
            return kProgramPrologue + "\n" + userProgram + "\n" + kProgramEpilogue
        }
    }
    
    func testEmptyProgram() {
        let instructions = mustCompile(AbstractSyntaxTreeNode())
        XCTAssertEqual(disassemble(instructions), makeExpectedProgram(""))
    }
    
    func testFailToCompileDueToRedefinitionOfLabel() {
        let ast = AbstractSyntaxTreeNode(children: [
            LabelDeclarationNode(identifier: TokenIdentifier(lineNumber: 1, lexeme: "foo")),
            LabelDeclarationNode(identifier: TokenIdentifier(lineNumber: 2, lexeme: "foo"))
        ])
        let errors = mustFailToCompile(ast)
        XCTAssertEqual(errors.first?.message, "label redefines existing symbol: `foo'")
    }
    
    func testFailToCompileDueToRedefinitionOfConstant() {
        let ast = AbstractSyntaxTreeNode(children: [
            ConstantDeclaration(identifier: TokenIdentifier(lineNumber: 1, lexeme: "foo"),
                                expression: Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "1", literal: 1))),
            ConstantDeclaration(identifier: TokenIdentifier(lineNumber: 2, lexeme: "foo"),
                                expression: Expression.Literal(number: TokenNumber(lineNumber: 2, lexeme: "42", literal: 42))),
        ])
        let errors = mustFailToCompile(ast)
        XCTAssertEqual(errors.first?.message, "constant redefines existing symbol: `foo'")
    }
    
    func testEvalStatementMovesLiteralValueIntoRegisterA() {
        let ast = AbstractSyntaxTreeNode(children: [
            EvalStatement(token: TokenEval(lineNumber: 1, lexeme: "eval"),
                          expression: Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "1", literal: 1)))
        ])
        let instructions = mustCompile(ast)
        let expected = makeExpectedProgram("LI A, 1")
        let actual = disassemble(instructions)
        XCTAssertEqual(expected, actual)
        let computer = execute(instructions: instructions)
        XCTAssertEqual(computer.cpuState.registerA.value, 1)
    }
        
//    func testEvalStatementMovesLiteralValueIntoRegisterA() {
//        let one = TokenNumber(lineNumber: 1, lexeme: "1", literal: 1)
//        let two = TokenNumber(lineNumber: 1, lexeme: "2", literal: 2)
//        let ast = AbstractSyntaxTreeNode(children: [
//            EvalStatement(token: TokenEval(lineNumber: 1, lexeme: "eval"),
//                          expression: Expression.Addition(left: Expression.Literal(number: one),
//                                                          right: Expression.Literal(number: two)))
//        ])
//        let instructions = mustCompile(ast)
//        XCTAssertEqual(disassemble(instructions), kProgramPrologue + "\n" + """
//LI A, 1
//""")
//
//        let computer = execute(program: instructions)
//        XCTAssertEqual(computer.cpuState.registerA.value, 3)
//    }
}
