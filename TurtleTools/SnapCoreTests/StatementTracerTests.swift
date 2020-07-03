//
//  StatementTracerTests.swift
//  SnapCoreTests
//
//  Created by Andrew Fox on 6/21/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import XCTest
import SnapCore
import TurtleCompilerToolbox

class StatementTracerTests: XCTestCase {
    func testTraceSingleReturnStatement() {
        let tracer = StatementTracer()
        let token = TokenReturn(lineNumber: 1, lexeme: "return")
        let one = ExprUtils.makeLiteralInt(value: 1)
        let traces = try! tracer.trace(ast: Return(token: token, expression: one))
        XCTAssertEqual(traces[0], [.Return])
    }
    
    func testTraceBlockContainingSingleReturnStatement() {
        let tracer = StatementTracer()
        let token = TokenReturn(lineNumber: 1, lexeme: "return")
        let one = ExprUtils.makeLiteralInt(value: 1)
        let traces = try! tracer.trace(ast: Block(children: [
            Return(token: token, expression: one)
        ]))
        XCTAssertEqual(traces, [[.Return]])
    }
    
    func testThrowErrorWhenStatementAfterReturnInBlock() {
        let tracer = StatementTracer()
        let token = TokenReturn(lineNumber: 1, lexeme: "return")
        let one = ExprUtils.makeLiteralInt(value: 1)
        let ast = Block(children: [
            Return(token: token, expression: one),
            ExprUtils.makeAssignment(name: "foo", right: one)
        ])
        XCTAssertThrowsError(try tracer.trace(ast: ast)) {
            if let error = $0 as? CompilerError {
                XCTAssertEqual(error.message, "code after return will never be executed")
            } else {
                XCTFail()
            }
        }
    }
    
    func testTraceReturnStatementsThroughIf() {
        let tracer = StatementTracer()
        let token = TokenReturn(lineNumber: 1, lexeme: "return")
        let tr = ExprUtils.makeLiteralBoolean(value: true)
        let one = ExprUtils.makeLiteralInt(value: 1)
        let two = ExprUtils.makeLiteralInt(value: 2)
        let traces = try! tracer.trace(ast: Block(children: [
            If(condition: tr, then: Return(token: token, expression: one), else: nil),
            Return(token: token, expression: two)
        ]))
        XCTAssertEqual(traces[0], [.IfThen, .Return])
        XCTAssertEqual(traces[1], [.IfSkipped, .Return])
    }
    
    func testTraceReturnStatementsThroughElse() {
        let tracer = StatementTracer()
        let token = TokenReturn(lineNumber: 1, lexeme: "return")
        let tr = ExprUtils.makeLiteralBoolean(value: true)
        let one = ExprUtils.makeLiteralInt(value: 1)
        let traces = try! tracer.trace(ast: Block(children: [
            If(condition: tr, then: Block(), else: Return(token: token, expression: one))
        ]))
        XCTAssertEqual(traces.count, 2)
        XCTAssertEqual(traces[0], [.IfThen])
        XCTAssertEqual(traces[1], [.IfElse, .Return])
    }
    
    func testTraceReturnStatementsThroughWhile() {
        let tracer = StatementTracer()
        let token = TokenReturn(lineNumber: 1, lexeme: "return")
        let tr = ExprUtils.makeLiteralBoolean(value: true)
        let one = ExprUtils.makeLiteralInt(value: 1)
        let traces = try! tracer.trace(ast: Block(children: [
            While(condition: tr, body: Return(token: token, expression: one))
        ]))
        XCTAssertEqual(traces.count, 2)
        XCTAssertEqual(traces[0], [.LoopBody, .Return])
        XCTAssertEqual(traces[1], [.LoopSkipped])
    }
    
    func testTraceReturnStatementsThroughForLoop() {
        let tracer = StatementTracer()
        let token = TokenReturn(lineNumber: 1, lexeme: "return")
        let tr = ExprUtils.makeLiteralBoolean(value: true)
        let one = ExprUtils.makeLiteralInt(value: 1)
        let traces = try! tracer.trace(ast: Block(children: [
            ForLoop(initializerClause: AbstractSyntaxTreeNode(),
                    conditionClause: tr,
                    incrementClause: AbstractSyntaxTreeNode(),
                    body: Return(token: token, expression: one))
        ]))
        XCTAssertEqual(traces.count, 2)
        XCTAssertEqual(traces[0], [.LoopBody, .Return])
        XCTAssertEqual(traces[1], [.LoopSkipped])
    }
}
