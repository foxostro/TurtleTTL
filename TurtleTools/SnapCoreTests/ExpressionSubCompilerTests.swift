//
//  ExpressionSubCompilerTests.swift
//  SnapCoreTests
//
//  Created by Andrew Fox on 5/22/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import XCTest
import SnapCore
import TurtleCompilerToolbox

class ExpressionSubCompilerTests: XCTestCase {
    func compile(expression: Expression, symbols: SymbolTable = SymbolTable()) throws -> [YertleInstruction] {
        let compiler = ExpressionSubCompiler(symbols: symbols)
        let ir = try compiler.compile(expression: expression)
        return ir
    }
    
    func testCannotCompileUnsupportedExpression() {
        let expr = Expression.UnsupportedExpression()
        XCTAssertThrowsError(try compile(expression: expr)) {
            let compilerError = $0 as? CompilerError
            XCTAssertNotNil(compilerError)
            XCTAssertEqual(compilerError?.message, "unsupported expression: <UnsupportedExpression: children=[]>")
        }
    }
    
    func testCompileLiteralWordExpression() {
        XCTAssertEqual(try compile(expression: ExprUtils.makeLiteralWord(value: 1)), [.push(1)])
        XCTAssertEqual(try compile(expression: ExprUtils.makeLiteralWord(value: 2)), [.push(2)])
    }
    
    func testCompileLiteralBooleanExpression() {
        XCTAssertEqual(try compile(expression: ExprUtils.makeLiteralBoolean(value: true)), [.push(1)])
        XCTAssertEqual(try compile(expression: ExprUtils.makeLiteralBoolean(value: false)), [.push(0)])
    }
    
    func testCompileBinaryExpression_Add_1() {
        let expr = ExprUtils.makeAdd(left: ExprUtils.makeLiteralWord(value: 1),
                                     right: ExprUtils.makeLiteralWord(value: 2))
        XCTAssertEqual(try compile(expression: expr), [
            .push(2),
            .push(1),
            .add
        ])
    }
    
    func testCompileBinaryExpression_Add_2() {
        let expr = ExprUtils.makeAdd(left: ExprUtils.makeLiteralWord(value: 1),
                                     right: ExprUtils.makeAdd(left: ExprUtils.makeLiteralWord(value: 2),
                                                              right: ExprUtils.makeLiteralWord(value: 3)))
        XCTAssertEqual(try compile(expression: expr), [
            .push(3),
            .push(2),
            .add,
            .push(1),
            .add
        ])
    }
    
    func testCompileBinaryExpression_Subtract() {
        let expr = ExprUtils.makeSub(left: ExprUtils.makeLiteralWord(value: 2),
                                     right: ExprUtils.makeLiteralWord(value: 1))
        XCTAssertEqual(try compile(expression: expr), [
            .push(1),
            .push(2),
            .sub
        ])
    }
    
    func testCompileBinaryExpression_Multiply() {
        let expr = ExprUtils.makeMul(left: ExprUtils.makeLiteralWord(value: 2),
                                     right: ExprUtils.makeLiteralWord(value: 1))
        XCTAssertEqual(try compile(expression: expr), [
            .push(1),
            .push(2),
            .mul
        ])
    }
    
    func testCompileBinaryExpression_Divide() {
        let expr = ExprUtils.makeDiv(left: ExprUtils.makeLiteralWord(value: 1),
                                     right: ExprUtils.makeLiteralWord(value: 2))
        XCTAssertEqual(try compile(expression: expr), [
            .push(2),
            .push(1),
            .div
        ])
    }
    
    func testCompileIdentifierExpression_Word_Static() {
        let expr = ExprUtils.makeIdentifier(name: "foo")
        let symbols = SymbolTable(["foo" : Symbol(type: .u8, offset: 0x0010, isMutable: false)])
        XCTAssertEqual(try compile(expression: expr, symbols: symbols), [
            .load(0x0010)
        ])
    }
    
    func testCompileIdentifierExpression_Word_Stack() {
        let expr = ExprUtils.makeIdentifier(name: "foo")
        let symbol = Symbol(type: .u8, offset: 0x0004, isMutable: false, storage: .stackStorage)
        let symbols = SymbolTable(["foo" : symbol])
        let ir = try! compile(expression: expr, symbols: symbols)
        let executor = YertleExecutor()
        executor.configure = {computer in
            // Set the value of the local variable on the stack.
            // We're going to assume the initial value of the frame pointer,
            // which is 0xff00.
            computer.dataRAM.store(value: 0xaa, to: 0xff00 - 4)
        }
        let computer = try! executor.execute(ir: ir)
        XCTAssertEqual(computer.cpuState.registerA.value, 0xaa)
    }
    
    func testCompileIdentifierExpression_Boolean_Static() {
        let expr = ExprUtils.makeIdentifier(name: "foo")
        let symbols = SymbolTable(["foo" : Symbol(type: .boolean, offset: 0x0010, isMutable: false)])
        XCTAssertEqual(try compile(expression: expr, symbols: symbols), [
            .load(0x0010)
        ])
    }
    
    func testCompileIdentifierExpression_UnresolvedIdentifier() {
        let expr = ExprUtils.makeIdentifier(name: "foo")
        XCTAssertThrowsError(try compile(expression: expr)) {
            XCTAssertEqual(($0 as? CompilerError)?.message, "use of unresolved identifier: `foo'")
        }
    }
    
    func testCompileAssignmentToWord_Static() {
        let expr = ExprUtils.makeAssignment(name: "foo", right: ExprUtils.makeLiteralWord(value: 42))
        let symbols = SymbolTable(["foo" : Symbol(type: .u8, offset: 0x0010, isMutable: true)])
        XCTAssertEqual(try compile(expression: expr, symbols: symbols), [
            .push(42),
            .store(0x0010)
        ])
    }
    
    func testCompileAssignmentToWord_Stack() {
        let expr = ExprUtils.makeAssignment(name: "foo", right: ExprUtils.makeLiteralWord(value: 0xaa))
        let symbol = Symbol(type: .u8, offset: 0x0004, isMutable: true, storage: .stackStorage)
        let symbols = SymbolTable(["foo" : symbol])
        let ir = try! compile(expression: expr, symbols: symbols)
        let executor = YertleExecutor()
        let computer = try! executor.execute(ir: ir)
        XCTAssertEqual(computer.dataRAM.load(from: 0xff00 - 4), 0xaa)
    }
    
    func testCannotAssignToAnImmutableValue_Word() {
        let expr = ExprUtils.makeAssignment(name: "foo", right: ExprUtils.makeLiteralWord(value: 42))
        let symbols = SymbolTable(["foo" : Symbol(type: .u8, offset: 0x0010, isMutable: false)])
        XCTAssertThrowsError(try compile(expression: expr, symbols: symbols)) {
            let compilerError = $0 as? CompilerError
            XCTAssertNotNil(compilerError)
            XCTAssertEqual(compilerError?.message, "cannot assign to immutable variable `foo'")
        }
    }
    
    func testCompileAssignmentToBoolean() {
        let expr = ExprUtils.makeAssignment(name: "foo", right: ExprUtils.makeLiteralBoolean(value: true))
        let symbols = SymbolTable(["foo" : Symbol(type: .boolean, offset: 0x0010, isMutable: true)])
        XCTAssertEqual(try compile(expression: expr, symbols: symbols), [
            .push(1),
            .store(0x0010)
        ])
    }
    
    func testCannotAssignToAnImmutableValue_Boolean() {
        let expr = ExprUtils.makeAssignment(name: "foo", right: ExprUtils.makeLiteralBoolean(value: true))
        let symbols = SymbolTable(["foo" : Symbol(type: .boolean, offset: 0x0010, isMutable: false)])
        XCTAssertThrowsError(try compile(expression: expr, symbols: symbols)) {
            let compilerError = $0 as? CompilerError
            XCTAssertNotNil(compilerError)
            XCTAssertEqual(compilerError?.message, "cannot assign to immutable variable `foo'")
        }
    }
    
    func testCompileComparisonEquals() {
        let expr = ExprUtils.makeComparisonEq(left: ExprUtils.makeLiteralWord(value: 2),
                                              right: ExprUtils.makeLiteralWord(value: 1))
        XCTAssertEqual(try compile(expression: expr), [
            .push(1),
            .push(2),
            .eq
        ])
    }
    
    func testCompileComparisonNotEqual() {
        let expr = ExprUtils.makeComparisonNe(left: ExprUtils.makeLiteralWord(value: 2),
                                              right: ExprUtils.makeLiteralWord(value: 1))
        XCTAssertEqual(try compile(expression: expr), [
            .push(1),
            .push(2),
            .ne
        ])
    }
    
    func testCompileComparisonLessThan() {
        let expr = ExprUtils.makeComparisonLt(left: ExprUtils.makeLiteralWord(value: 2),
                                              right: ExprUtils.makeLiteralWord(value: 1))
        XCTAssertEqual(try compile(expression: expr), [
            .push(1),
            .push(2),
            .lt
        ])
    }
    
    func testCompileComparisonGreaterThan() {
        let expr = ExprUtils.makeComparisonGt(left: ExprUtils.makeLiteralWord(value: 2),
                                              right: ExprUtils.makeLiteralWord(value: 1))
        XCTAssertEqual(try compile(expression: expr), [
            .push(1),
            .push(2),
            .gt
        ])
    }
    
    func testCompileComparisonLessThanOrEqualTo() {
        let expr = ExprUtils.makeComparisonLe(left: ExprUtils.makeLiteralWord(value: 2),
                                              right: ExprUtils.makeLiteralWord(value: 1))
        XCTAssertEqual(try compile(expression: expr), [
            .push(1),
            .push(2),
            .le
        ])
    }
    
    func testCompileComparisonGreaterThanOrEqualTo() {
        let expr = ExprUtils.makeComparisonGe(left: ExprUtils.makeLiteralWord(value: 2),
                                              right: ExprUtils.makeLiteralWord(value: 1))
        XCTAssertEqual(try compile(expression: expr), [
            .push(1),
            .push(2),
            .ge
        ])
    }
    
    func testCompileUnaryNegation() {
        let expr = ExprUtils.makeNeg(expr: ExprUtils.makeLiteralWord(value: 42))
        XCTAssertEqual(try compile(expression: expr), [
            .push(0),
            .push(42),
            .sub
        ])
    }
    
    func testFailToCompileInvalidPrefixUnaryOperator() {
        let expr = Expression.Unary(op: TokenOperator(lineNumber: 1, lexeme: "*", op: .multiply),
                                    expression: ExprUtils.makeLiteralWord(value: 1))
        XCTAssertThrowsError(try compile(expression: expr)) {
            let compilerError = $0 as? CompilerError
            XCTAssertNotNil(compilerError)
            XCTAssertEqual(compilerError?.message, "`*' is not a prefix unary operator")
        }
    }
    
    func testFailToCompileBecauseAdditionCannotBeAppliedToBooleanAndWord() {
        let expr = ExprUtils.makeAdd(left: ExprUtils.makeLiteralWord(value: 1),
                                     right: ExprUtils.makeComparisonEq(left: ExprUtils.makeLiteralWord(value: 1),
                                                                       right: ExprUtils.makeLiteralWord(value: 1)))
        XCTAssertThrowsError(try compile(expression: expr)) {
            let compilerError = $0 as? CompilerError
            XCTAssertNotNil(compilerError)
            XCTAssertEqual(compilerError?.message, "binary operator `+' cannot be applied to operands of types `u8' and `boolean'")
        }
    }
}
