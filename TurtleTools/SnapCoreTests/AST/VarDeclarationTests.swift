//
//  VarDeclarationTests.swift
//  SnapCoreTests
//
//  Created by Andrew Fox on 5/19/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import XCTest
import SnapCore
import TurtleCompilerToolbox

class VarDeclarationTests: XCTestCase {
    func testDoesNotEqualAnotherNodeType() {
        let foo = TokenIdentifier(lineNumber: 1, lexeme: "foo")
        let one = Expression.LiteralWord(number: TokenNumber(lineNumber: 1, lexeme: "1", literal: 1))
        XCTAssertNotEqual(VarDeclaration(identifier: foo, expression: one, storage: .staticStorage, isMutable: true), AbstractSyntaxTreeNode())
    }
    
    func testDoesNotEqualNodeWithDifferentIdentifier() {
        let foo = TokenIdentifier(lineNumber: 1, lexeme: "foo")
        let bar = TokenIdentifier(lineNumber: 2, lexeme: "bar")
        let one = Expression.LiteralWord(number: TokenNumber(lineNumber: 1, lexeme: "1", literal: 1))
        XCTAssertNotEqual(VarDeclaration(identifier: foo, expression: one, storage: .staticStorage, isMutable: true),
                          VarDeclaration(identifier: bar, expression: one, storage: .staticStorage, isMutable: true))
    }
    
    func testDoesNotEqualNodeWithDifferentStorage() {
        let foo = TokenIdentifier(lineNumber: 1, lexeme: "foo")
        let bar = TokenIdentifier(lineNumber: 2, lexeme: "bar")
        let one = Expression.LiteralWord(number: TokenNumber(lineNumber: 1, lexeme: "1", literal: 1))
        XCTAssertNotEqual(VarDeclaration(identifier: foo, expression: one, storage: .staticStorage, isMutable: true),
                          VarDeclaration(identifier: bar, expression: one, storage: .stackStorage, isMutable: true))
    }
    
    func testDoesNotEqualNodeWithDifferentMutability() {
        let foo = TokenIdentifier(lineNumber: 1, lexeme: "foo")
        let bar = TokenIdentifier(lineNumber: 2, lexeme: "bar")
        let one = Expression.LiteralWord(number: TokenNumber(lineNumber: 1, lexeme: "1", literal: 1))
        XCTAssertNotEqual(VarDeclaration(identifier: foo, expression: one, storage: .staticStorage, isMutable: true),
                          VarDeclaration(identifier: bar, expression: one, storage: .staticStorage, isMutable: false))
    }
    
    func testDoesNotEqualNodeWithDifferentNumber() {
        let foo = TokenIdentifier(lineNumber: 1, lexeme: "foo")
        let one = Expression.LiteralWord(number: TokenNumber(lineNumber: 1, lexeme: "1", literal: 1))
        let two = Expression.LiteralWord(number: TokenNumber(lineNumber: 2, lexeme: "2", literal: 2))
        XCTAssertNotEqual(VarDeclaration(identifier: foo, expression: one, storage: .staticStorage, isMutable: true),
                          VarDeclaration(identifier: foo, expression: two, storage: .staticStorage, isMutable: true))
    }
    
    func testNodesActuallyAreTheSame() {
        XCTAssertEqual(VarDeclaration(identifier: TokenIdentifier(lineNumber: 1, lexeme: "foo"),
                                                   expression: Expression.LiteralWord(number: TokenNumber(lineNumber: 1,
                                                                                                          lexeme: "1",
                                                                                                          literal: 1)),
                                                   storage: .staticStorage, isMutable: true),
                       VarDeclaration(identifier: TokenIdentifier(lineNumber: 1, lexeme: "foo"),
                                                   expression: Expression.LiteralWord(number: TokenNumber(lineNumber: 1,
                                                                                                          lexeme: "1",
                                                                                                          literal: 1)),
                                                   storage: .staticStorage, isMutable: true))
    }
    
    func testHash() {
        XCTAssertNotEqual(VarDeclaration(identifier: TokenIdentifier(lineNumber: 1, lexeme: "foo"),
                                                      expression: Expression.LiteralWord(number: TokenNumber(lineNumber: 1,
                                                                                                             lexeme: "1",
                                                                                                             literal: 1)),
                                                      storage: .staticStorage, isMutable: true).hashValue,
                          VarDeclaration(identifier: TokenIdentifier(lineNumber: 1, lexeme: "foo"),
                                                      expression: Expression.LiteralWord(number: TokenNumber(lineNumber: 1,
                                                                                                             lexeme: "2",
                                                                                                             literal: 2)),
                                                      storage: .staticStorage, isMutable: true).hashValue)
    }
}