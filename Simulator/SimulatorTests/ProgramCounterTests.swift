//
//  ProgramCounterTests.swift
//  SimulatorTests
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import XCTest

@testable import Simulator

class ProgramCounterTests: XCTestCase {
    func testInitializedToZero() {
        let pc = ProgramCounter()
        XCTAssertEqual(pc.value, 0)
    }
    
    func testIncrement() {
        let pc = ProgramCounter()
        pc.increment()
        XCTAssertEqual(pc.value, 1)
    }
}
