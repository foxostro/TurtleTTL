//
//  ExpressionEvaluatorCompileTimeTests.swift
//  SnapCoreTests
//
//  Created by Andrew Fox on 5/20/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import XCTest
import SnapCore
import TurtleCompilerToolbox

class ExpressionEvaluatorCompileTimeTests: XCTestCase {
    func testEvaluateLiteralNumber() {
        let expression = Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "1", literal: 1))
        let eval = ExpressionEvaluatorCompileTime()
        var actual: Int?
        XCTAssertNoThrow(actual = try eval.evaluate(expression: expression))
        XCTAssertEqual(1, actual)
    }
    
    func testEvaluationFailsWithUnresolvedIdentifier() {
        let expression = Expression.Identifier(identifier: TokenIdentifier(lineNumber: 1, lexeme: "foo"))
        let eval = ExpressionEvaluatorCompileTime()
        XCTAssertThrowsError(try eval.evaluate(expression: expression)) {
            XCTAssertNotNil($0 as? Expression.MustBeCompileTimeConstantError)
        }
    }
    
    func testEvaluateConstantIdentifier() {
        let expression = Expression.Identifier(identifier: TokenIdentifier(lineNumber: 1, lexeme: "foo"))
        let eval = ExpressionEvaluatorCompileTime(symbols: ["foo" : 1])
        let actual = try! eval.evaluate(expression: expression)
        XCTAssertEqual(1, actual)
    }
    
    func testEvaluateUnaryExpression() {
        let expression = Expression.Unary(op: TokenOperator(lineNumber: 1, lexeme: "-", op: .minus),
                                          expression: Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "1", literal: -1)))
        let eval = ExpressionEvaluatorCompileTime()
        let actual = try! eval.evaluate(expression: expression)
        XCTAssertEqual(1, actual)
    }
    
    func testEvaluateUnaryExpressionWithInvalidOperator() {
        let expression = Expression.Unary(op: TokenOperator(lineNumber: 1, lexeme: "*", op: .multiply),
                                          expression: Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "1", literal: 1)))
        let eval = ExpressionEvaluatorCompileTime()
        XCTAssertThrowsError(try eval.evaluate(expression: expression)) {
            XCTAssertNotNil($0 as? CompilerError)
            let error = $0 as! CompilerError
            XCTAssertEqual(error.message, "\'*\' is not a prefix unary operator")
        }
    }
    
    func testEvaluateBinaryExpression_Addition() {
        let expression = Expression.Binary(op: TokenOperator(lineNumber: 1, lexeme: "+", op: .plus),
                                          left: Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "1", literal: 1)),
                                          right: Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "2", literal: 2)))
        let eval = ExpressionEvaluatorCompileTime()
        let actual = try! eval.evaluate(expression: expression)
        XCTAssertEqual(3, actual)
    }
    
    func testEvaluateBinaryExpression_Minus() {
        let expression = Expression.Binary(op: TokenOperator(lineNumber: 1, lexeme: "-", op: .minus),
                                          left: Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "2", literal: 2)),
                                          right: Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "1", literal: 1)))
        let eval = ExpressionEvaluatorCompileTime()
        let actual = try! eval.evaluate(expression: expression)
        XCTAssertEqual(1, actual)
    }
    
    func testEvaluateBinaryExpression_Multiply() {
        let expression = Expression.Binary(op: TokenOperator(lineNumber: 1, lexeme: "*", op: .multiply),
                                          left: Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "2", literal: 2)),
                                          right: Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "2", literal: 2)))
        let eval = ExpressionEvaluatorCompileTime()
        let actual = try! eval.evaluate(expression: expression)
        XCTAssertEqual(4, actual)
    }
    
    func testEvaluateBinaryExpression_Divide() {
        let expression = Expression.Binary(op: TokenOperator(lineNumber: 1, lexeme: "/", op: .divide),
                                          left: Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "8", literal: 8)),
                                          right: Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "2", literal: 2)))
        let eval = ExpressionEvaluatorCompileTime()
        let actual = try! eval.evaluate(expression: expression)
        XCTAssertEqual(4, actual)
    }
    
    func testEvaluateBinaryExpression_Modulus() {
        let expression = Expression.Binary(op: TokenOperator(lineNumber: 1, lexeme: "%", op: .modulus),
                                          left: Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "7", literal: 7)),
                                          right: Expression.Literal(number: TokenNumber(lineNumber: 1, lexeme: "4", literal: 4)))
        let eval = ExpressionEvaluatorCompileTime()
        let actual = try! eval.evaluate(expression: expression)
        XCTAssertEqual(3, actual)
    }
}