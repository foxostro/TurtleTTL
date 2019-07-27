//
//  ALUTests.swift
//  SimulatorTests
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import XCTest

@testable import Simulator

class ALUTests: XCTestCase {
    func testAdd() {
        let alu = ALU()
        alu.a = 1
        alu.b = 1
        alu.s = 0b1001
        alu.mode = 0
        alu.carryIn = 1 // active-low so 1 -> no carry
        alu.update()
        XCTAssertEqual(alu.result, 2)
        XCTAssertEqual(alu.carryFlag, 1) // active-low so 1 -> no carry
    }
    
    func testAddWithCarry() {
        let alu = ALU()
        alu.a = 1
        alu.b = 1
        alu.s = 0b1001
        alu.mode = 0
        alu.carryIn = 0 // active-low so 0 -> carry
        alu.update()
        XCTAssertEqual(alu.result, 2)
        XCTAssertEqual(alu.carryFlag, 1) // active-low so 1 -> no carry
    }
}
