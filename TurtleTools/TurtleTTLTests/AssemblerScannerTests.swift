//
//  AssemblerScannerTests.swift
//  TurtleTTLTests
//
//  Created by Andrew Fox on 8/20/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import XCTest
import TurtleTTL

class AssemblerScannerTests: XCTestCase {
    typealias Token = AssemblerScanner.Token
    
    func testTokenizeEmptyString() {
        let tokenizer = AssemblerScanner(withString: "")
        try! tokenizer.scanTokens()
        let tokens = tokenizer.tokens
        XCTAssertEqual(tokens.count, 0)
    }
    
    func testTokenizeNewLine() {
        let tokenizer = AssemblerScanner(withString: "\n")
        try! tokenizer.scanTokens()
        XCTAssertEqual(tokenizer.tokens, [Token(type: .newline,
                                                lineNumber: 1,
                                                lexeme: "\n")])
    }
    
    func testTokenizeSomeNewLines() {
        let tokenizer = AssemblerScanner(withString: "\n\n\n")
        try! tokenizer.scanTokens()
        XCTAssertEqual(tokenizer.tokens, [Token(type: .newline,
                                                lineNumber: 1,
                                                lexeme: "\n"),
                                          Token(type: .newline,
                                                lineNumber: 2,
                                                lexeme: "\n"),
                                          Token(type: .newline,
                                                lineNumber: 3,
                                                lexeme: "\n")])
    }
    
    func testTokenizeComma() {
        let tokenizer = AssemblerScanner(withString: ",")
        try! tokenizer.scanTokens()
        XCTAssertEqual(tokenizer.tokens, [Token(type: .comma,
                                                lineNumber: 1,
                                                lexeme: ",")])
    }
    
    func testTokenizeComment() {
        let tokenizer = AssemblerScanner(withString: "// comment")
        try! tokenizer.scanTokens()
        XCTAssertEqual(tokenizer.tokens, [])
    }
    
    func testTokenizeCommaAndComment() {
        let tokenizer = AssemblerScanner(withString: ",// comment")
        try! tokenizer.scanTokens()
        XCTAssertEqual(tokenizer.tokens, [Token(type: .comma,
                                                lineNumber: 1,
                                                lexeme: ",")])
    }
    
    func testTokenizeCommentWithWhitespace() {
        let tokenizer = AssemblerScanner(withString: " \t  // comment\n")
        try! tokenizer.scanTokens()
        XCTAssertEqual(tokenizer.tokens, [Token(type: .newline,
                                                lineNumber: 1,
                                                lexeme: "\n")])
    }
    
    func testUnexpectedCharacter() {
        let tokenizer = AssemblerScanner(withString: "'")
        XCTAssertThrowsError(try tokenizer.scanTokens()) { e in
            let error = e as! AssemblerScanner.AssemblerScannerError
            XCTAssertEqual(error.line, 1)
            XCTAssertEqual(error.message, "unexpected character: `''")
        }
    }
    
    func testTokenizeNOP() {
        let tokenizer = AssemblerScanner(withString: "NOP")
        try! tokenizer.scanTokens()
        XCTAssertEqual(tokenizer.tokens, [Token(type: .nop,
                                                lineNumber: 1,
                                                lexeme: "NOP")])
    }
    
    func testTokenizeCMP() {
        let tokenizer = AssemblerScanner(withString: "CMP")
        try! tokenizer.scanTokens()
        XCTAssertEqual(tokenizer.tokens, [Token(type: .cmp,
                                                lineNumber: 1,
                                                lexeme: "CMP")])
    }
    
    func testTokenizeHLT() {
        let tokenizer = AssemblerScanner(withString: "HLT")
        try! tokenizer.scanTokens()
        XCTAssertEqual(tokenizer.tokens, [Token(type: .hlt,
                                                lineNumber: 1,
                                                lexeme: "HLT")])
    }
    
    func testTokenizeIdentifier() {
        let tokenizer = AssemblerScanner(withString: "Bogus")
        try! tokenizer.scanTokens()
        XCTAssertEqual(tokenizer.tokens, [Token(type: .identifier,
                                                lineNumber: 1,
                                                lexeme: "Bogus")])
    }
    
    func testFailToTokenizeInvalidIdentifier() {
        let tokenizer = AssemblerScanner(withString: "*")
        XCTAssertThrowsError(try tokenizer.scanTokens()) { e in
            let error = e as! AssemblerScanner.AssemblerScannerError
            XCTAssertEqual(error.line, 1)
            XCTAssertEqual(error.message, "unexpected character: `*'")
        }
    }
    
    func testTokenizeDecimalLiteral() {
        let tokenizer = AssemblerScanner(withString: "123")
        try! tokenizer.scanTokens()
        XCTAssertEqual(tokenizer.tokens, [Token(type: .number,
                                                lineNumber: 1,
                                                lexeme: "123",
                                                literal: 123)])
    }
    
    func testTokenizeDollarHexadecimalLiteral() {
        let tokenizer = AssemblerScanner(withString: "$ff")
        try! tokenizer.scanTokens()
        XCTAssertEqual(tokenizer.tokens, [Token(type: .number,
                                                lineNumber: 1,
                                                lexeme: "$ff",
                                                literal: 255)])
    }
    
    func testTokenizeHexadecimalLiteral() {
        let tokenizer = AssemblerScanner(withString: "0xff")
        try! tokenizer.scanTokens()
        XCTAssertEqual(tokenizer.tokens, [Token(type: .number,
                                                lineNumber: 1,
                                                lexeme: "0xff",
                                                literal: 255)])
    }
}
