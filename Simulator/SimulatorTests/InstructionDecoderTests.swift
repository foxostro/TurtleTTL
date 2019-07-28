//
//  InstructionDecoderTests.swift
//  SimulatorTests
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import XCTest

@testable import Simulator

class InstructionDecoderTests: XCTestCase {
    func testContentsInitializedToZero() {
        let decoder = InstructionDecoder()
        XCTAssertEqual(decoder.size, 131072)
        for i in 0..<decoder.size {
            XCTAssertEqual(decoder.load(address: i), 0)
        }
    }
    
    func testContentsModifiable() {
        let decoder = InstructionDecoder()
        let value: UInt16 = 1234
        for i in 0..<decoder.size {
            decoder.store(address: i, value: value)
        }
        for i in 0..<decoder.size {
            XCTAssertEqual(decoder.load(address: i), value)
        }
    }
}
