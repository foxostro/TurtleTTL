//
//  ComputerTests.swift
//  SimulatorTests
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import XCTest

@testable import Simulator

class ComputerTests: XCTestCase {
    func testReset() {
        let computer = Computer()
        computer.instructionROM.store(address: 0, value: 0)
        computer.reset()
        XCTAssertEqual(computer.programCounter.contents, 0)
        XCTAssertEqual(computer.registerC.contents, 0)
    }
    
    func testBasicExample() {
        let computer = Computer()
        
        // NOP
        computer.instructionDecoder.store(opcode: 0, value: 0b0111111111111111)
        computer.instructionROM.store(address: 0, value: 0b0000000000000000)
        
        // Set register A to immediate value 1.
        computer.instructionDecoder.store(opcode: 1, value: 0b0111011111111110)
        computer.instructionROM.store(address: 1, value: 0b0000000100000001)
        
        computer.reset()
        
        // Fetch the NOP, Decode Whatever, Execute Whatever
        computer.step()
        
        // Fetch the assignment to A, Decode the NOP, Execute Whatever
        computer.step()
        
        // Fetch whatever, Decode the assignment to A, Execute the NOP
        computer.step()
        
        // Fetch whatever, Decode whatever, Execute the assignment to A.
        XCTAssertEqual(computer.registerA.contents, 0)
        computer.step()
        XCTAssertEqual(computer.registerA.contents, 1)
    }
    
    func testBasicAddition() {
        let computer = Computer()
        
        let nop = ControlWord()
        
        let lda = ControlWord()
        lda.CO = false
        lda.AI = false
        
        let sum = ControlWord()
        sum.EO = false
        sum.AI = false
        
        let hlt = ControlWord()
        hlt.HLT = true

        // NOP
        computer.instructionDecoder.store(opcode: 0, value: nop.contents)
        computer.instructionROM.store(address: 0, value: 0b0000000000000000)

        // Set register A to immediate value 1.
        computer.instructionDecoder.store(opcode: 1, value: lda.contents)
        computer.instructionROM.store(address: 1, value: 0b0000000100000001)

        // Set register A to "A plus 1"
        computer.instructionDecoder.store(opcode: 2, value: sum.contents)
        computer.instructionROM.store(address: 2, value: 0b0000001000000000)
        
        // Set register A to "A plus 1"
        computer.instructionDecoder.store(opcode: 3, value: sum.contents)
        computer.instructionROM.store(address: 3, value: 0b0000001100000000)

        // Halt
        computer.instructionDecoder.store(opcode: 4, value: hlt.contents)
        computer.instructionROM.store(address: 4, value: 0b0000010000000000)

        computer.execute()
        
        XCTAssertEqual(computer.registerA.contents, 3)
    }
}
