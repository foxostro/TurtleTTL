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
        computer.instructionROM.contents[0] = 0
        computer.reset()
        XCTAssertEqual(computer.programCounter.contents, 0)
        XCTAssertEqual(computer.registerC.contents, 0)
    }
    
    func testBasicExample() {
        let computer = Computer()
        
        // NOP
        computer.instructionDecoder.contents[0] = 0b0111111111111111
        computer.instructionROM.contents[0] = 0b0000000000000000
        
        // Set register A to immediate value 1.
        computer.instructionDecoder.contents[1] = 0b0111011111111110
        computer.instructionROM.contents[1] = 0b0000000100000001
        
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
        computer.instructionDecoder.contents[0] = nop.contents
        computer.instructionROM.contents[0] = 0b0000000000000000

        // Set register A to immediate value 1.
        computer.instructionDecoder.contents[1] = lda.contents
        computer.instructionROM.contents[1] = 0b0000000100000001

        // Set register A to "A plus 1"
        computer.instructionDecoder.contents[2] = sum.contents
        computer.instructionROM.contents[2] = 0b0000001000000000
        
        // Set register A to "A plus 1"
        computer.instructionDecoder.contents[3] = sum.contents
        computer.instructionROM.contents[3] = 0b0000001100000000

        // Halt
        computer.instructionDecoder.contents[4] = hlt.contents
        computer.instructionROM.contents[4] = 0b0000010000000000

        computer.execute()
        
        XCTAssertEqual(computer.registerA.contents, 3)
    }
}
