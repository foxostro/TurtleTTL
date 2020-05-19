//
//  SnapCompilerFrontEndTests.swift
//  SnapCoreTests
//
//  Created by Andrew Fox on 5/17/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import XCTest
import SnapCore
import TurtleCompilerToolbox
import TurtleCore

class SnapCompilerFrontEndTests: XCTestCase {
    let kProgramPrologue = """
NOP
LI X, 0
LI Y, 0
LI M, 0
LI X, 0
LI Y, 1
LI M, 0
"""
    
    var compiler = SnapCompilerFrontEnd()
    
    override func setUp() {
        compiler = SnapCompilerFrontEnd()
    }
    
    func disassemble(_ instructions: [Instruction]) -> String {
        var disassembly = ""
        if instructions.count > 0 {
            disassembly.append(instructions[0].disassembly ?? "")
        }
        for instruction in instructions[1..<instructions.count] {
            disassembly.append("\n")
            disassembly.append(instruction.disassembly ?? "")
        }
        return disassembly
    }
    
    func mustCompile(_ sourceCode: String) -> [Instruction] {
        compiler.compile(sourceCode)
        if compiler.hasError {
            XCTFail()
        }
        return compiler.instructions
    }
    
    func mustFailToCompile(_ sourceCode: String) -> [CompilerError] {
        compiler.compile(sourceCode)
        if !compiler.hasError {
            XCTFail()
        }
        return compiler.errors
    }
    
    func testCompileEmptyProgramYieldsNOP() {
        let instructions = mustCompile("")
        XCTAssertEqual(instructions.count, 7)
        XCTAssertEqual(disassemble(instructions), kProgramPrologue)
    }
    
    // As a hardware requirement, every program has an implicit NOP as the first
    // instruction. Compiling a single NOP instruction yields a program composed
    // of two NOPs.
    func testCompileASingleNOPYieldsTwoNOPs() {
        let instructions = mustCompile("NOP")
        XCTAssertEqual(instructions.count, 8)
        XCTAssertEqual(disassemble(instructions), kProgramPrologue + "\nNOP")
    }
    
    func testCompileFailsDuringLexingDueToInvalidCharacter() {
        let errors = mustFailToCompile("@")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "unexpected character: `@'")
    }
    
    func testCompilingBogusOpcodeYieldsError() {
        let errors = mustFailToCompile("BOGUS")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "no such instruction: `BOGUS'")
    }
    
    func testCompilingBogusOpcodeWithNewlineYieldsError() {
        let errors = mustFailToCompile("BOGUS\n")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "no such instruction: `BOGUS'")
    }
    
    func testCompileTwoNOPsYieldsProgramWithThreeNOPs() {
        let instructions = mustCompile("NOP\nNOP\n")
        XCTAssertEqual(instructions.count, 9)
        XCTAssertEqual(disassemble(instructions), kProgramPrologue + """

NOP
NOP
""")
    }
    
    func testCompilerIgnoresComments() {
        let instructions = mustCompile("// comment")
        XCTAssertEqual(instructions.count, 7)
        XCTAssertEqual(disassemble(instructions), kProgramPrologue)
    }
    
    func testCompilerIgnoresCommentsAfterOpcodesToo() {
        let instructions = mustCompile("NOP  // do nothing\n")
        XCTAssertEqual(instructions.count, 8)
        XCTAssertEqual(disassemble(instructions), kProgramPrologue + "\nNOP")
    }
    
    func testCompilerIgnoresHashCommentsToo() {
        let instructions = mustCompile("# comment")
        XCTAssertEqual(instructions.count, 7)
        XCTAssertEqual(disassemble(instructions), kProgramPrologue)
    }
    
    func testNOPAcceptsNoOperands() {
        let errors = mustFailToCompile("NOP $1\n")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "instruction takes no operands: `NOP'")
    }
    
    func testCMPCompiles() {
        let instructions = mustCompile("CMP")
        XCTAssertEqual(instructions.count, 8)
        
        let cmpOpcode: UInt8 = UInt8(makeMicrocodeGenerator().getOpcode(withMnemonic: "ALU")!)
        let kALUControlForCMP: UInt8 = 0b0110
        let cmpInstruction = Instruction(opcode: cmpOpcode, immediate: kALUControlForCMP)
        XCTAssertEqual(instructions[7], cmpInstruction)
    }
    
    func makeMicrocodeGenerator() -> MicrocodeGenerator {
        let microcodeGenerator = MicrocodeGenerator()
        microcodeGenerator.generate()
        return microcodeGenerator
    }
    
    func testCMPAcceptsNoOperands() {
        let errors = mustFailToCompile("CMP $1")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "instruction takes no operands: `CMP'")
    }
    
    func testHLTCompiles() {
        let instructions = mustCompile("HLT")
        XCTAssertEqual(instructions.count, 8)
        
        let hltOpcode: UInt8 = UInt8(makeMicrocodeGenerator().getOpcode(withMnemonic: "HLT")!)
        let hltInstruction = Instruction(opcode: hltOpcode, immediate: 0)
        XCTAssertEqual(instructions[7], hltInstruction)
    }
    
    func testHLTAcceptsNoOperands() {
        let errors = mustFailToCompile("HLT $1")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "instruction takes no operands: `HLT'")
    }
    
    func testDuplicateLabelDeclaration() {
        let errors = mustFailToCompile("label:\nlabel:")
        let error = errors.first!
        XCTAssertEqual(error.line, 2)
        XCTAssertEqual(error.message, "label redefines existing symbol: `label'")
    }
    
    func testParseLabelNameIsANumber() {
        let errors = mustFailToCompile("123:")
        let error = errors.first!
        XCTAssertEqual(error.message, "unexpected end of input")
    }
    
    func testParseExtraneousColon() {
        let errors = mustFailToCompile(":")
        let error = errors.first!
        XCTAssertEqual(error.message, "unexpected end of input")
    }
    
    func testFailToCompileLXYWithUndeclaredLabel() {
        let errors = mustFailToCompile("LXY label")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "unrecognized symbol name: `label'")
    }
    
    func testFailToCompileLXYWithZeroOperands() {
        let errors = mustFailToCompile("LXY")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `LXY'")
    }
    
    func testLXYCompiles() {
        let instructions = mustCompile("label:\nLXY label")
        
        XCTAssertEqual(instructions.count, 9)
        
        // The first instruction in memory must be a NOP. Without this, CPU
        // reset does not work.
        let nop: UInt8 = 0
        XCTAssertEqual(instructions[0].opcode, nop)
        
        // Load the resolved label address into XY.
        let microcodeGenerator = makeMicrocodeGenerator()
        XCTAssertEqual(instructions[7].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "MOV X, C")!))
        XCTAssertEqual(instructions[7].immediate, 0)
        XCTAssertEqual(instructions[8].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "MOV Y, C")!))
        XCTAssertEqual(instructions[8].immediate, 7)
    }
    
    func testJALRWithZeroOperandsDoesCompile() {
        let instructions = mustCompile("JALR")
        let microcodeGenerator = makeMicrocodeGenerator()
        
        XCTAssertEqual(instructions.count, 8)
        
        // The first instruction in memory must be a NOP. Without this, CPU
        // reset does not work.
        let nop: UInt8 = 0
        XCTAssertEqual(instructions[0].opcode, nop)
        
        // A bare JALR will conditionally jump to whatever address is in XY.
        XCTAssertEqual(instructions[7].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "JALR")!))
    }
    
    func testJMPWithZeroOperandsDoesCompile() {
        let instructions = mustCompile("JMP")
        let microcodeGenerator = makeMicrocodeGenerator()
        
        XCTAssertEqual(instructions.count, 8)
        
        // The first instruction in memory must be a NOP. Without this, CPU
        // reset does not work.
        let nop: UInt8 = 0
        XCTAssertEqual(instructions[0].opcode, nop)
        
        // A bare JMP will jump to whatever address is in XY.
        XCTAssertEqual(instructions[7].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "JMP")!))
    }
    
    func testJCWithZeroOperandsDoesCompile() {
        let instructions = mustCompile("JC")
        let microcodeGenerator = makeMicrocodeGenerator()
        
        XCTAssertEqual(instructions.count, 8)
        
        // The first instruction in memory must be a NOP. Without this, CPU
        // reset does not work.
        let nop: UInt8 = 0
        XCTAssertEqual(instructions[0].opcode, nop)
        
        // A bare JC will conditionally jump to whatever address is in XY.
        XCTAssertEqual(instructions[7].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "JC")!))
    }
    
    func testFailToCompileADDWithZeroOperands() {
        let errors = mustFailToCompile("ADD")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `ADD'")
    }
    
    func testFailToCompileADDWithIdentifierOperand() {
        let errors = mustFailToCompile("ADD label")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `ADD'")
    }
    
    func testCompileADDWithRegisterOperand() {
        let instructions = mustCompile("ADD D")
        
        XCTAssertEqual(instructions.count, 8)
        let nop: UInt8 = 0
        XCTAssertEqual(instructions[0].opcode, nop)
        
        XCTAssertEqual(instructions[7].immediate, 0b1001)
        
        let microcodeGenerator = makeMicrocodeGenerator()
        let controlWord = ControlWord(withValue: UInt(microcodeGenerator.microcode.load(opcode: Int(instructions[7].opcode), carryFlag: 0, equalFlag: 0)))
        
        XCTAssertEqual(controlWord.EO, .active)
        XCTAssertEqual(controlWord.DI, .active)
        XCTAssertEqual(controlWord.CarryIn, .inactive)
    }
    
    func testFailToCompileADDWithInvalidDestinationRegisterE() {
        let errors = mustFailToCompile("ADD E")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "register cannot be used as a destination: `E'")
    }
    
    func testFailToCompileADDWithInvalidDestinationRegisterC() {
        let errors = mustFailToCompile("ADD C")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "register cannot be used as a destination: `C'")
    }
    
    func testFailToCompileLIWithNoOperands() {
        let errors = mustFailToCompile("LI")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `LI'")
    }
    
    func testFailToCompileLIWithOneOperand() {
        let errors = mustFailToCompile("LI $1")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `LI'")
    }
    
    func testFailToCompileLIWhichIsMissingTheCommaOperand() {
        let errors = mustFailToCompile("LI A $1")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `LI'")
    }
    
    func testFailToCompileLIWithBadComma() {
        let errors = mustFailToCompile("LI,")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `LI'")
    }
    
    func testFailToCompileLIWhereDestinationIsANumber() {
        let errors = mustFailToCompile("LI $1, A")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `LI'")
    }
    
    func testFailToCompileLIWhereSourceIsARegister() {
        let errors = mustFailToCompile("LI B, A")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `LI'")
    }
    
    func testFailToCompileLIWithTooManyOperands() {
        let errors = mustFailToCompile("LI A, $1, B")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `LI'")
    }
    
    func testCompileValidLI() {
        let instructions = mustCompile("LI D, 42")
        
        XCTAssertEqual(instructions.count, 8)
        XCTAssertEqual(instructions[0].opcode, 0)
        XCTAssertEqual(instructions[7].immediate, 42)
        
        let microcodeGenerator = makeMicrocodeGenerator()
        let controlWord = ControlWord(withValue: UInt(microcodeGenerator.microcode.load(opcode: Int(instructions[7].opcode), carryFlag: 0, equalFlag: 0)))
        
        XCTAssertEqual(controlWord.CO, .active)
        XCTAssertEqual(controlWord.DI, .active)
    }
    
    func testFailToCompileLIWithTooBigNumber() {
        let errors = mustFailToCompile("LI D, 10000000")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "immediate value is not between 0 and 255: `10000000'")
    }
    
    func testFailToCompileMOVWithNoOperands() {
        let errors = mustFailToCompile("MOV")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `MOV'")
    }
    
    func testFailToCompileMOVWithOneOperand() {
        let errors = mustFailToCompile("MOV A")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `MOV'")
    }
    
    func testFailToCompileMOVWithTooManyOperands() {
        let errors = mustFailToCompile("MOV A, B, C")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `MOV'")
    }
    
    func testFailToCompileMOVWithNumberInFirstOperand() {
        let errors = mustFailToCompile("MOV $1, A")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `MOV'")
    }
    
    func testFailToCompileMOVWithNumberInSecondOperand() {
        let errors = mustFailToCompile("MOV A, $1")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `MOV'")
    }
    
    func testFailToCompileMOVWithInvalidDestinationRegisterE() {
        let errors = mustFailToCompile("MOV E, A")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "register cannot be used as a destination: `E'")
    }
    
    func testFailToCompileMOVWithInvalidDestinationRegisterC() {
        let errors = mustFailToCompile("MOV C, A")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "register cannot be used as a destination: `C'")
    }
    
    func testFailToCompileMOVWithInvalidSourceRegisterD() {
        let errors = mustFailToCompile("MOV A, D")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "register cannot be used as a source: `D'")
    }
    
    func testCompileValidMOV() {
        let instructions = mustCompile("MOV D, A")
        
        XCTAssertEqual(instructions.count, 8)
        XCTAssertEqual(instructions[0].opcode, 0)
        
        let microcodeGenerator = makeMicrocodeGenerator()
        let controlWord = ControlWord(withValue: UInt(microcodeGenerator.microcode.load(opcode: Int(instructions[7].opcode), carryFlag: 0, equalFlag: 0)))
        
        XCTAssertEqual(controlWord.AO, .active)
        XCTAssertEqual(controlWord.DI, .active)
    }
    
    func testOmnibusErrorWithNoErrors() {
        let error = compiler.makeOmnibusError(fileName: nil, errors: [])
        XCTAssertEqual(error.line, nil)
        XCTAssertEqual(error.message, "0 errors generated\n")
    }
    
    func testOmnibusErrorWithOneError() {
        let errors = mustFailToCompile("MOV E, A")
        let error = compiler.makeOmnibusError(fileName: "foo.s", errors: errors)
        XCTAssertEqual(error.line, nil)
        XCTAssertEqual(error.message, "foo.s:1: error: register cannot be used as a destination: `E'\n1 error generated\n")
    }
    
    func testOmnibusErrorWithMultipleErrors() {
        let errors = mustFailToCompile("MOV E, A\nMOV\n")
        let error = compiler.makeOmnibusError(fileName: "foo.s", errors: errors)
        XCTAssertEqual(error.line, nil)
        XCTAssertEqual(error.message, "foo.s:1: error: register cannot be used as a destination: `E'\nfoo.s:2: error: operand type mismatch: `MOV'\n2 errors generated\n")
    }
    
    func testINUV() {
        let instructions = mustCompile("INUV")
        
        XCTAssertEqual(instructions.count, 8)
        let nop: UInt8 = 0
        XCTAssertEqual(instructions[0].opcode, nop)
        
        let microcodeGenerator = makeMicrocodeGenerator()
        let controlWord = ControlWord(withValue: UInt(microcodeGenerator.microcode.load(opcode: Int(instructions[7].opcode), carryFlag: 0, equalFlag: 0)))
        
        XCTAssertEqual(controlWord.UVInc, .active)
    }
    
    func testINXY() {
        let instructions = mustCompile("INXY")
        
        XCTAssertEqual(instructions.count, 8)
        let nop: UInt8 = 0
        XCTAssertEqual(instructions[0].opcode, nop)
        
        let microcodeGenerator = makeMicrocodeGenerator()
        let controlWord = ControlWord(withValue: UInt(microcodeGenerator.microcode.load(opcode: Int(instructions[7].opcode), carryFlag: 0, equalFlag: 0)))
        
        XCTAssertEqual(controlWord.XYInc, .active)
    }
    
    func testFailsToCompileBLTWithZeroOperands() {
        let errors = mustFailToCompile("BLT")
        let error = errors.first!
        XCTAssertEqual(error.line, 1)
        XCTAssertEqual(error.message, "operand type mismatch: `BLT'")
    }
    
    func testBLT() {
        let instructions = mustCompile("BLT P, M")
        
        XCTAssertEqual(instructions.count, 8)
        let nop: UInt8 = 0
        XCTAssertEqual(instructions[0].opcode, nop)
        
        let microcodeGenerator = makeMicrocodeGenerator()
        let controlWord = ControlWord(withValue: UInt(microcodeGenerator.microcode.load(opcode: Int(instructions[7].opcode), carryFlag: 0, equalFlag: 0)))
        
        XCTAssertEqual(controlWord.XYInc, .active)
        XCTAssertEqual(controlWord.UVInc, .active)
        XCTAssertEqual(controlWord.PI,    .active)
        XCTAssertEqual(controlWord.MO,    .active)
    }
    
    func testJC() {
        let instructions = mustCompile("JC")
        let microcodeGenerator = makeMicrocodeGenerator()
        XCTAssertEqual(instructions[7].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "JC")!))
    }
    
    func testJNC() {
        let instructions = mustCompile("JNC")
        let microcodeGenerator = makeMicrocodeGenerator()
        XCTAssertEqual(instructions[7].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "JNC")!))
    }
    
    func testJE() {
        let instructions = mustCompile("JE")
        let microcodeGenerator = makeMicrocodeGenerator()
        XCTAssertEqual(instructions[7].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "JE")!))
    }
    
    func testJNE() {
        let instructions = mustCompile("JNE")
        let microcodeGenerator = makeMicrocodeGenerator()
        XCTAssertEqual(instructions[7].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "JNE")!))
    }
    
    func testJG() {
        let instructions = mustCompile("JG")
        let microcodeGenerator = makeMicrocodeGenerator()
        XCTAssertEqual(instructions[7].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "JG")!))
    }
    
    func testJLE() {
        let instructions = mustCompile("JLE")
        let microcodeGenerator = makeMicrocodeGenerator()
        XCTAssertEqual(instructions[7].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "JLE")!))
    }
    
    func testJL() {
        let instructions = mustCompile("JL")
        let microcodeGenerator = makeMicrocodeGenerator()
        XCTAssertEqual(instructions[7].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "JL")!))
    }
    
    func testJGE() {
        let instructions = mustCompile("JGE")
        let microcodeGenerator = makeMicrocodeGenerator()
        XCTAssertEqual(instructions[7].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "JGE")!))
    }
    
    func testCompiledInstructionsIncludeDisassembly() {
        let instructions = mustCompile("NOP")
        XCTAssertEqual(instructions[7].disassembly, "NOP")
    }
    
    func testReturn42() {
        let instructions = mustCompile("return 42")
        XCTAssertEqual(instructions[7].disassembly, "LI A, 42")
    }
}