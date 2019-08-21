//
//  TextInputStreamTests.swift
//  TurtleTTLTests
//
//  Created by Andrew Fox on 8/20/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import XCTest
import TurtleTTL

class TextInputStreamTests: XCTestCase {
    func testInitWithEmptyString() {
        let input = TurtleScanner(withString: "")
        XCTAssertEqual(input.string, "")
        XCTAssertTrue(input.isAtEnd)
    }
    
    func testInitWithOneCharacter() {
        let input = TurtleScanner(withString: "a")
        XCTAssertEqual(input.string, "a")
        XCTAssertFalse(input.isAtEnd)
    }
    
    func testPeekEmptyString() {
        let input = TurtleScanner(withString: "")
        XCTAssertEqual(input.peek(), nil)
        XCTAssertTrue(input.isAtEnd)
    }
    
    func testPeekCharacter() {
        let input = TurtleScanner(withString: "a")
        XCTAssertEqual(input.peek(), "a")
        XCTAssertFalse(input.isAtEnd)
    }
    
    func testPeekAheadAFewCharacters() {
        let input = TurtleScanner(withString: "abcd")
        XCTAssertEqual(input.peek(2), "c")
    }
    
    func testAdvanceEmptyString() {
        let input = TurtleScanner(withString: "")
        XCTAssertTrue(input.isAtEnd)
        XCTAssertEqual(input.advance(), nil)
    }
    
    func testAdvanceCharacter() {
        let input = TurtleScanner(withString: "a")
        XCTAssertFalse(input.isAtEnd)
        XCTAssertEqual(input.advance(), "a")
        XCTAssertTrue(input.isAtEnd)
    }
    
    func testAdvanceMultipleCharacter() {
        let input = TurtleScanner(withString: "ab")
        XCTAssertFalse(input.isAtEnd)
        XCTAssertEqual(input.advance(count: 3), "ab")
        XCTAssertTrue(input.isAtEnd)
    }
    
    func testMatchEmptyString() {
        let input = TurtleScanner(withString: "ab")
        XCTAssertEqual(input.match(""), "")
    }
    
    func testMatchCharacter() {
        let input = TurtleScanner(withString: "ab")
        XCTAssertEqual(input.match("a"), "a")
        XCTAssertEqual(input.match("b"), "b")
        XCTAssertTrue(input.isAtEnd)
    }
    
    func testMatchString() {
        let input = TurtleScanner(withString: "ab")
        XCTAssertEqual(input.match("ab"), "ab")
        XCTAssertTrue(input.isAtEnd)
    }
    
    func testMatchWhitespaceButNoneIsThere() {
        let input = TurtleScanner(withString: "\n")
        XCTAssertEqual(input.match(characterSet: .whitespaces), nil)
        XCTAssertEqual(input.peek(), "\n")
    }
    
    func testMatchWhitespace() {
        let input = TurtleScanner(withString: "  \t\n")
        XCTAssertEqual(input.match(characterSet: .whitespaces), "  \t")
        XCTAssertEqual(input.peek(), "\n")
    }
    
    func testAdvanceToNewlineWithEmptyString() {
        let input = TurtleScanner(withString: "")
        input.advanceToNewline()
        XCTAssertTrue(input.isAtEnd)
    }
    
    func testAdvanceToNewline() {
        let input = TurtleScanner(withString: "abcd\n")
        input.advanceToNewline()
        XCTAssertEqual(input.peek(), "\n")
    }
}
