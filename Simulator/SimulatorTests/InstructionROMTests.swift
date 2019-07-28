//
//  InstructionROMTests.swift
//  SimulatorTests
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import XCTest

@testable import Simulator

class InstructionROMTests: XCTestCase {
    func testContentsInitializedToZero() {
        let memory = InstructionROM()
        XCTAssertEqual(memory.size, 32768)
        for i in 0..<memory.size {
            XCTAssertEqual(memory.load(address: i), 0)
        }
    }
    
    func testContentsModifiable() {
        let memory = InstructionROM()
        let value: UInt16 = 32767
        memory.store(address: 0, value: value)
        XCTAssertEqual(memory.load(address: 0), value)
    }
}
