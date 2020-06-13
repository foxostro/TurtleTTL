//
//  SnapCompilerTests.swift
//  SnapCoreTests
//
//  Created by Andrew Fox on 5/17/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import XCTest
import SnapCore

class SnapCompilerTests: XCTestCase {
    func testCompileFailsDuringLexing() {
        let compiler = SnapCompiler()
        compiler.compile("@")
        XCTAssertTrue(compiler.hasError)
        XCTAssertEqual(compiler.errors.count, 1)
        XCTAssertEqual(compiler.errors.first?.line, Optional<Int>(1))
        XCTAssertEqual(compiler.errors.first?.message, Optional<String>("unexpected character: `@'"))
    }
    
    func testCompileFailsDuringParsing() {
        let compiler = SnapCompiler()
        compiler.compile(":")
        XCTAssertTrue(compiler.hasError)
        XCTAssertEqual(compiler.errors.count, 1)
        XCTAssertEqual(compiler.errors.first?.line, Optional<Int>(1))
        XCTAssertEqual(compiler.errors.first?.message, Optional<String>("operand type mismatch: `:'"))
    }
    
    func testCompileFailsDuringCodeGeneration() {
        let compiler = SnapCompiler()
        compiler.compile("foo")
        XCTAssertTrue(compiler.hasError)
        XCTAssertEqual(compiler.errors.count, 1)
        XCTAssertEqual(compiler.errors.first?.line, Optional<Int>(1))
        XCTAssertEqual(compiler.errors.first?.message, Optional<String>("use of unresolved identifier: `foo'"))
    }
    
    func testEnsureDisassemblyWorks() {
        let compiler = SnapCompiler()
        compiler.compile("")
        XCTAssertFalse(compiler.hasError)
        XCTAssertGreaterThan(compiler.instructions.count, 0)
        XCTAssertEqual(compiler.instructions.first?.disassembly, "NOP")
    }
    
    func test_EndToEndIntegration_SimplestProgram() {
        let executor = SnapExecutor()
        let computer = try! executor.execute(program: """
let a = 42
""")
        XCTAssertEqual(computer.dataRAM.load(from: 0x0010), 42)
    }
    
    func test_EndToEndIntegration_ForLoop() {
        let executor = SnapExecutor()
        let computer = try! executor.execute(program: """
var a = 255
for var i = 0; i < 10; i = i + 1 {
    a = i
}
""")
        XCTAssertEqual(computer.dataRAM.load(from: 0x0010), 9)
    }
    
    func test_EndToEndIntegration_ForLoop_SingleStatement() {
        let executor = SnapExecutor()
        let computer = try! executor.execute(program: """
var a = 255
for var i = 0; i < 10; i = i + 1
    a = i
""")
        XCTAssertEqual(computer.dataRAM.load(from: 0x0010), 9)
    }
    
    func test_EndToEndIntegration_Fibonacci() {
        let executor = SnapExecutor()
        let computer = try! executor.execute(program: """
var a = 1
var b = 1
var fib = 0
for var i = 0; i < 10; i = i + 1 {
    fib = b + a
    a = b
    b = fib
}
""")
        XCTAssertEqual(computer.dataRAM.load(from: 0x0010), 89)
        XCTAssertEqual(computer.dataRAM.load(from: 0x0011), 144)
    }
    
    func test_EndToEndIntegration_Fibonacci_ExercisingStaticKeyword() {
        let executor = SnapExecutor()
        let computer = try! executor.execute(program: """
var a = 1
var b = 1
for var i = 0; i < 10; i = i + 1 {
    static var fib = b + a
    a = b
    b = fib
}
""")
        XCTAssertEqual(computer.dataRAM.load(from: 0x0010), 89)
        XCTAssertEqual(computer.dataRAM.load(from: 0x0011), 144)
    }
    
    func testLocalVariablesDoNotSurviveTheLocalScope() {
        let compiler = SnapCompiler()
        compiler.compile("""
{
    var a = 1
    a = 2
}
a = 3
""")
        XCTAssertTrue(compiler.hasError)
        XCTAssertEqual(compiler.errors.count, 1)
        XCTAssertEqual(compiler.errors.first?.line, 5)
        XCTAssertEqual(compiler.errors.first?.message, "use of unresolved identifier: `a'")
    }
    
    func testLocalVariablesDoNotSurviveTheLocalScope_ForLoop() {
        let compiler = SnapCompiler()
        compiler.compile("""
for var i = 0; i < 10; i = i + 1 {
    var a = i
}
i = 3
""")
        XCTAssertTrue(compiler.hasError)
        XCTAssertEqual(compiler.errors.count, 1)
        XCTAssertEqual(compiler.errors.first?.line, 4)
        XCTAssertEqual(compiler.errors.first?.message, "use of unresolved identifier: `i'")
    }
    
    func test_EndToEndIntegration_StaticVarInABlockIsStoredInStaticDataArea() {
        let executor = SnapExecutor()
        let computer = try! executor.execute(program: """
{
    static var a = 0xaa
}
""")
        XCTAssertEqual(computer.dataRAM.load(from: 0x0010), 0xaa) // var a
    }
}
