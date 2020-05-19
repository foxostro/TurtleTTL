//
//  RegisterTests.swift
//  TurtleSimulatorCoreTests
//
//  Created by Andrew Fox on 8/17/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import XCTest
import TurtleSimulatorCore

class RegisterTests: XCTestCase {
    func testDescriptionIsFourDigitHex() {
        XCTAssertEqual(Register(withValue: 0xa).description, "0x0a")
    }
}