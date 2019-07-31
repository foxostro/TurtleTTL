//
//  AssemblerTests.swift
//  SimulatorTests
//
//  Created by Andrew Fox on 7/30/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import XCTest

@testable import Simulator

class AssemblerTests: XCTestCase {
    var microcodeGenerator = MicrocodeGenerator()
    var nop: UInt8 = 0
    
    override func setUp() {
        microcodeGenerator = MicrocodeGenerator()
        microcodeGenerator.generate()
        nop = UInt8(microcodeGenerator.getOpcode(withMnemonic: "NOP")!)
    }
    
    func testAssembleEmptyProgram() {
        let assembler = Assembler(microcodeGenerator: microcodeGenerator)
        assembler.begin()
        assembler.end()
        let instructions = assembler.instructions
        XCTAssertEqual(instructions.count, 1)
        XCTAssertEqual(instructions[0].opcode, nop)
    }
    
    func testAssembleNop() {
        let assembler = Assembler(microcodeGenerator: microcodeGenerator)
        assembler.begin()
        assembler.nop()
        assembler.end()
        let instructions = assembler.instructions
        XCTAssertEqual(instructions.count, 2)
        XCTAssertEqual(instructions[0].opcode, nop)
        XCTAssertEqual(instructions[1].opcode, nop)
    }
}
