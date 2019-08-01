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
    
    func makeBackEnd() -> AssemblerBackEnd {
        let codeGenerator = CodeGenerator(microcodeGenerator: microcodeGenerator)
        let assembler = AssemblerBackEnd(codeGenerator: codeGenerator)
        return assembler
    }
}
