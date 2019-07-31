//
//  MicrocodeGeneratorTests.swift
//  SimulatorTests
//
//  Created by Andrew Fox on 7/30/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import XCTest

@testable import Simulator

class MicrocodeGeneratorTests: XCTestCase {
    func testNOP() {
        let generator = MicrocodeGenerator()
        generator.generate()
        
        let NOP = generator.getOpcode(withMnemonic: "NOP")
        XCTAssertEqual(generator.microcode.load(opcode: NOP!, carryFlag: 1, equalFlag: 1), ControlWord().contents)
    }
    
    func testHLT() {
        let generator = MicrocodeGenerator()
        generator.generate()
        let HLT = generator.getOpcode(withMnemonic: "HLT")
        let controlWord = generator.microcode.load(opcode: HLT!, carryFlag: 1, equalFlag: 1)
        XCTAssertTrue((controlWord & (1<<15)) != 0)
    }
    
    func testGetOpcode() {
        let generator = MicrocodeGenerator()
        generator.generate()
        XCTAssertEqual(generator.getOpcode(withMnemonic: "NOP")!, 0)
    }
}
