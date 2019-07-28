//
//  ControlWordTests.swift
//  SimulatorTests
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import XCTest

@testable import Simulator

class ControlWordTests: XCTestCase {
    func testNOPDoesNotHalt() {
        let controlWord = ControlWord()
        XCTAssertEqual(controlWord.HLT, false)
    }
    func testModifyCOBit() {
        let controlWord = ControlWord()
        controlWord.CO = false
        XCTAssertEqual(controlWord.contents, 0b0111111111111110)
    }
    func testSettingContentsSetsHLTSignal() {
        let controlWord = ControlWord()
        controlWord.contents = 1<<15
        XCTAssertEqual(controlWord.HLT, true)
    }
}
