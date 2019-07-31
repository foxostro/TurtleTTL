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
    func testOpcodeZeroIsNOP() {
        let generator = MicrocodeGenerator()
        generator.generate()
        XCTAssertEqual(generator.microcode.load(opcode: 0, carryFlag: 1, equalFlag: 1), ControlWord().contents)
    }
}
