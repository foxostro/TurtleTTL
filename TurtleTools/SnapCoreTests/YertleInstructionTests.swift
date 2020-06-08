//
//  YertleInstructionTests.swift
//  SnapCoreTests
//
//  Created by Andrew Fox on 6/4/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import XCTest
import SnapCore
import TurtleCompilerToolbox

class YertleInstructionTests: XCTestCase {
    func testDescription() {
        let L0 = TokenIdentifier(lineNumber: -1, lexeme: ".L0")
        XCTAssertEqual(YertleInstruction.push(0).description, "PUSH 0")
        XCTAssertEqual(YertleInstruction.pop.description, "POP")
        XCTAssertEqual(YertleInstruction.eq.description, "EQ")
        XCTAssertEqual(YertleInstruction.ne.description, "NE")
        XCTAssertEqual(YertleInstruction.lt.description, "LT")
        XCTAssertEqual(YertleInstruction.gt.description, "GT")
        XCTAssertEqual(YertleInstruction.le.description, "LE")
        XCTAssertEqual(YertleInstruction.ge.description, "GE")
        XCTAssertEqual(YertleInstruction.add.description, "ADD")
        XCTAssertEqual(YertleInstruction.sub.description, "SUB")
        XCTAssertEqual(YertleInstruction.mul.description, "MUL")
        XCTAssertEqual(YertleInstruction.div.description, "DIV")
        XCTAssertEqual(YertleInstruction.mod.description, "MOD")
        XCTAssertEqual(YertleInstruction.load(0xffff).description, "LOAD 0xffff")
        XCTAssertEqual(YertleInstruction.store(0xffff).description, "STORE 0xffff")
        XCTAssertEqual(YertleInstruction.label(L0).description, ".L0:")
        XCTAssertEqual(YertleInstruction.jmp(L0).description, "JMP .L0")
        XCTAssertEqual(YertleInstruction.je(L0).description, "JE .L0")
    }
    
    func testMakeListing_Empty() {
        let actual = YertleInstruction.makeListing(instructions: [])
        XCTAssertEqual(actual, "\n")
    }
    
    func testMakeListing_Example() {
        let actual = YertleInstruction.makeListing(instructions: [.push(0), .pop])
        XCTAssertEqual(actual, "PUSH 0\nPOP\n")
    }
}