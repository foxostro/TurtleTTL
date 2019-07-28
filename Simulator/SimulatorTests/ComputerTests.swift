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
        computer.instructionDecoder.store(opcode: 0, controlWord: nop)
        computer.instructionROM.store(address: 0, opcode: 0, immediate: 0)

        // Set register A to immediate value 1.
        computer.instructionDecoder.store(opcode: 1, controlWord: lda)
        computer.instructionROM.store(address: 1, opcode: 1, immediate: 1)

        // Set register A to "A plus 1"
        computer.instructionDecoder.store(opcode: 2, controlWord: sum)
        computer.instructionROM.store(address: 2, opcode: 2, immediate: 0)
        
        // Set register A to "A plus 1"
        computer.instructionDecoder.store(opcode: 3, controlWord: sum)
        computer.instructionROM.store(address: 3, opcode: 3, immediate: 0)

        // Halt
        computer.instructionDecoder.store(opcode: 4, controlWord: hlt)
        computer.instructionROM.store(address: 4, opcode: 4, immediate: 0)

        computer.execute()
        
        XCTAssertEqual(computer.registerA.contents, 3)
    }
}
