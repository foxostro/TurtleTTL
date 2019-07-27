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
}
