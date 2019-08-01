//
//  AssemblerBackEndTests.swift
//  SimulatorTests
//
//  Created by Andrew Fox on 7/31/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import XCTest

@testable import Simulator

class AssemblerBackEndTests: XCTestCase {
    var microcodeGenerator = MicrocodeGenerator()
    var nop: UInt8 = 0
    var hlt: UInt8 = 0
    
    func makeBackEnd() -> AssemblerBackEnd {
        let codeGenerator = CodeGenerator(microcodeGenerator: microcodeGenerator)
        let assembler = AssemblerBackEnd(codeGenerator: codeGenerator)
        return assembler
    }
    
    override func setUp() {
        microcodeGenerator = MicrocodeGenerator()
        microcodeGenerator.generate()
        nop = UInt8(microcodeGenerator.getOpcode(withMnemonic: "NOP")!)
        hlt = UInt8(microcodeGenerator.getOpcode(withMnemonic: "HLT")!)
    }
    
    func testBeginAndEndModifyIsAssemblingFlag() {
        let backEnd = makeBackEnd()
        XCTAssertFalse(backEnd.isAssembling)
        backEnd.begin()
        XCTAssertTrue(backEnd.isAssembling)
        backEnd.end()
        XCTAssertFalse(backEnd.isAssembling)
    }
    
    func testEmptyProgram() {
        let backEnd = makeBackEnd()
        backEnd.begin()
        backEnd.end()
        let instructions = backEnd.instructions
        XCTAssertEqual(instructions.count, 1)
        XCTAssertEqual(instructions[0].opcode, nop)
    }
    
    func testNop() {
        let backEnd = makeBackEnd()
        backEnd.begin()
        backEnd.nop()
        backEnd.end()
        let instructions = backEnd.instructions
        XCTAssertEqual(instructions.count, 2)
        XCTAssertEqual(instructions[0].opcode, nop)
        XCTAssertEqual(instructions[1].opcode, nop)
    }
    
    func testHlt() {
        let backEnd = makeBackEnd()
        backEnd.begin()
        backEnd.hlt()
        backEnd.end()
        let instructions = backEnd.instructions
        XCTAssertEqual(instructions.count, 2)
        XCTAssertEqual(instructions[0].opcode, nop)
        XCTAssertEqual(instructions[1].opcode, hlt)
    }
    
    func testMov() throws {
        let backEnd = makeBackEnd()
        backEnd.begin()
        try! backEnd.mov("D", "A")
        backEnd.end()
        let instructions = backEnd.instructions
        XCTAssertEqual(instructions.count, 2)
        XCTAssertEqual(instructions[0].opcode, nop)
        
        let controlWord = ControlWord()
        controlWord.contents = microcodeGenerator.microcode.load(opcode: Int(instructions[1].opcode), carryFlag: 0, equalFlag: 0)
        
        XCTAssertEqual(controlWord.AO, false)
        XCTAssertEqual(controlWord.DI, false)
    }
    
    func testLoadImmediate() {
        let backEnd = makeBackEnd()
        backEnd.begin()
        try! backEnd.li("D", 42)
        backEnd.end()
        let instructions = backEnd.instructions
        XCTAssertEqual(instructions.count, 2)
        XCTAssertEqual(instructions[0].opcode, nop)
        XCTAssertEqual(instructions[1].immediate, 42)
        
        let controlWord = ControlWord()
        controlWord.contents = microcodeGenerator.microcode.load(opcode: Int(instructions[1].opcode), carryFlag: 0, equalFlag: 0)
        
        XCTAssertEqual(controlWord.CO, false)
        XCTAssertEqual(controlWord.DI, false)
    }
    
    func testAdd() {
        let backEnd = makeBackEnd()
        backEnd.begin()
        try! backEnd.add("D")
        backEnd.end()
        let instructions = backEnd.instructions
        
        XCTAssertEqual(instructions.count, 2)
        XCTAssertEqual(instructions[0].opcode, nop)
        
        XCTAssertEqual(instructions[1].immediate, 0b011001)
        
        let controlWord = ControlWord()
        controlWord.contents = microcodeGenerator.microcode.load(opcode: Int(instructions[1].opcode), carryFlag: 0, equalFlag: 0)
        
        XCTAssertEqual(controlWord.EO, false)
        XCTAssertEqual(controlWord.DI, false)
    }
    
    func testResolveUnrecognizedLabel() {
        let backEnd = makeBackEnd()
        backEnd.begin()
        XCTAssertThrowsError(try backEnd.resolveSymbol(""))
    }
    
    func testLabel() {
        let backEnd = makeBackEnd()
        backEnd.begin()
        try! backEnd.label("foo")
        XCTAssertEqual(try! backEnd.resolveSymbol("foo"), 1)
    }
    
    func testDuplicateLabel() {
        let backEnd = makeBackEnd()
        backEnd.begin()
        try! backEnd.label("foo")
        XCTAssertThrowsError(try backEnd.label("foo"))
    }
    
    func testJmp() {
        let backEnd = makeBackEnd()
        backEnd.begin()
        try! backEnd.label("foo")
        try! backEnd.jmp("foo")
        backEnd.end()
        let instructions = backEnd.instructions
        
        XCTAssertEqual(instructions.count, 6)
        
        // The first instruction in memory must be a NOP. Without this, CPU
        // reset does not work.
        XCTAssertEqual(instructions[0].opcode, nop)
        
        // Load the resolved label address into XY.
        XCTAssertEqual(instructions[1].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "MOV X, C")!))
        XCTAssertEqual(instructions[1].immediate, 0)
        XCTAssertEqual(instructions[2].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "MOV Y, C")!))
        XCTAssertEqual(instructions[2].immediate, 1)
        
        // The JMP command jumps to the address in the XY register pair.
        XCTAssertEqual(instructions[3].opcode, UInt8(microcodeGenerator.getOpcode(withMnemonic: "JMP")!))
        
        // JMP must be followed by two NOPs. A jump does not clear the pipeline
        // so this is necessary to ensure correct operation.
        XCTAssertEqual(instructions[4].opcode, nop)
        XCTAssertEqual(instructions[5].opcode, nop)
    }
}
