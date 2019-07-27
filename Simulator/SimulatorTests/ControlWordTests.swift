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
    func testRaisingCOSetsContentsBit() {
        let controlWord = ControlWord()
        controlWord.CO = true
        XCTAssertEqual(controlWord.contents, 1)
    }
    func testRaisingHLTSetsContentsBit() {
        let controlWord = ControlWord()
        controlWord.HLT = true
        XCTAssertEqual(controlWord.contents, 1<<15)
    }
}
