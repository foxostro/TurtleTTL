//
//  YertleToTurtleMachineCodeCompilerTests.swift
//  SnapCoreTests
//
//  Created by Andrew Fox on 5/31/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import XCTest
import SnapCore
import TurtleSimulatorCore
import TurtleCompilerToolbox
import TurtleCore

class YertleToTurtleMachineCodeCompilerTests: XCTestCase {
    let kFramePointerHi = Int(YertleToTurtleMachineCodeCompiler.kFramePointerAddressHi)
    let kFramePointerLo = Int(YertleToTurtleMachineCodeCompiler.kFramePointerAddressLo)
    
    func disassemble(_ instructions: [Instruction]) -> String {
        let microcodeGenerator = MicrocodeGenerator()
        microcodeGenerator.generate()
        var result = ""
        let formatter = InstructionFormatter(microcodeGenerator: microcodeGenerator)
        if let instruction = instructions.first {
            result += formatter.makeInstructionWithDisassembly(instruction: instruction).disassembly ?? instruction.description
        }
        for instruction in instructions[1..<instructions.count] {
            result += "\n"
            result += formatter.makeInstructionWithDisassembly(instruction: instruction).disassembly ?? instruction.description
        }
        return result
    }
    
    func compile(_ instructions: [YertleInstruction]) -> [Instruction] {
        let microcodeGenerator = MicrocodeGenerator()
        microcodeGenerator.generate()
        let assembler = AssemblerBackEnd(microcodeGenerator: microcodeGenerator)
        let compiler = YertleToTurtleMachineCodeCompiler(assembler: assembler)
        try! compiler.compile(ir: instructions, base: 0)
        let instructions = InstructionFormatter.makeInstructionsWithDisassembly(instructions: assembler.instructions)
        return instructions
    }
    
    func execute(ir: [YertleInstruction]) throws -> Computer {
        let executor = YertleExecutor()
        let computer = try executor.execute(ir: ir)
        return computer
    }
    
    func testEmptyProgram() {
        let kFramePointerInitialValue = YertleToTurtleMachineCodeCompiler.kFramePointerInitialValue
        let kStackPointerInitialValue = YertleToTurtleMachineCodeCompiler.kStackPointerInitialValue
        let computer = try! execute(ir: [])
        XCTAssertEqual(computer.framePointer, kFramePointerInitialValue)
        XCTAssertEqual(computer.stackPointer, kStackPointerInitialValue)
    }
    
    func testPushOneValue() {
        let computer1 = try! execute(ir: [.push(1)])
        XCTAssertEqual(computer1.stack(at: 0), 1)
        
        let computer2 = try! execute(ir: [.push(2)])
        XCTAssertEqual(computer2.stack(at: 0), 2)
    }
    
    func testPushTwoValues() {
        let computer = try! execute(ir: [.push(1), .push(2)])
        XCTAssertEqual(computer.stack(at: 0), 2)
        XCTAssertEqual(computer.stack(at: 1), 1)
    }
    
    func testPushThreeValues() {
        let computer = try! execute(ir: [.push(1), .push(2), .push(3)])
        XCTAssertEqual(computer.stack(at: 0), 3)
        XCTAssertEqual(computer.stack(at: 1), 2)
        XCTAssertEqual(computer.stack(at: 2), 1)
        XCTAssertEqual(computer.stackPointer, 0xfffd)
        
    }
    
    func testPushFourValues() {
        let computer = try! execute(ir: [.push(1), .push(2), .push(3), .push(4)])
        XCTAssertEqual(computer.stack(at: 0), 4)
        XCTAssertEqual(computer.stack(at: 1), 3)
        XCTAssertEqual(computer.stack(at: 2), 2)
        XCTAssertEqual(computer.stack(at: 3), 1)
        XCTAssertEqual(computer.stackPointer, 0xfffc)
    }
    
    func testPushManyValues() {
        let kStackPointerInitialValue = UInt16(YertleToTurtleMachineCodeCompiler.kStackPointerInitialValue)
        let count = 300
        var ir: [YertleInstruction] = []
        for i in 0..<count {
            let value = UInt8(i % 256)
            ir.append(.push(Int(value)))
        }
        let computer = try! execute(ir: ir)
        
        let expectedStackPointer = kStackPointerInitialValue &- UInt16(count)
        XCTAssertEqual(computer.stackPointer, Int(expectedStackPointer))
        
        for i in 0..<count {
            XCTAssertEqual(computer.stack(at: i), UInt8((count-i-1) % 256))
        }
    }
    
    func testPushOneDoubleWordValue() {
        let computer = try! execute(ir: [.push16(1024)])
        XCTAssertEqual(computer.stack16(at: 0), 1024)
    }
    
    func testPushManyDoubleWordValues() {
        let kStackPointerInitialValue = UInt16(YertleToTurtleMachineCodeCompiler.kStackPointerInitialValue)
        let count = 1000
        var ir: [YertleInstruction] = []
        for i in 0..<count {
            ir.append(.push16(i))
        }
        let computer = try! execute(ir: ir)
        
        let expectedStackPointer = kStackPointerInitialValue &- UInt16(count*2)
        XCTAssertEqual(computer.stackPointer, Int(expectedStackPointer))
        
        for i in 0..<count {
            XCTAssertEqual(computer.stack16(at: i*2), UInt16(count-i-1))
        }
    }
    
    func testPopWithStackDepthFive() {
        let computer = try! execute(ir: [.push(1), .push(2), .push(3), .push(4), .push(5), .pop])
        XCTAssertEqual(computer.stack(at: 0), 4)
        XCTAssertEqual(computer.stack(at: 1), 3)
        XCTAssertEqual(computer.stack(at: 2), 2)
        XCTAssertEqual(computer.stack(at: 3), 1)
        XCTAssertEqual(computer.stackPointer, 0xfffc)
    }
    
    func testEqWithStackDepthFour() {
        let computer = try! execute(ir: [.push(1), .push(2), .push(3), .push(4), .eq])
        XCTAssertEqual(computer.stack(at: 0), 0)
        XCTAssertEqual(computer.stack(at: 1), 2)
        XCTAssertEqual(computer.stack(at: 2), 1)
    }
    
    func testNeWithStackDepthFour() {
        let computer = try! execute(ir: [.push(1), .push(2), .push(3), .push(4), .ne])
        XCTAssertEqual(computer.stack(at: 0), 1)
        XCTAssertEqual(computer.stack(at: 1), 2)
        XCTAssertEqual(computer.stack(at: 2), 1)
    }
    
    func testLtWithStackDepthFour() {
        let computer = try! execute(ir: [.push(1), .push(2), .push(3), .push(4), .lt])
        XCTAssertEqual(computer.stack(at: 0), 0)
        XCTAssertEqual(computer.stack(at: 1), 2)
        XCTAssertEqual(computer.stack(at: 2), 1)
    }
    
    func testGtWithStackDepthFour() {
        let computer = try! execute(ir: [.push(1), .push(2), .push(3), .push(4), .gt])
        XCTAssertEqual(computer.stack(at: 0), 1)
        XCTAssertEqual(computer.stack(at: 1), 2)
        XCTAssertEqual(computer.stack(at: 2), 1)
    }
    
    func testLeWithStackDepthFour() {
        let computer = try! execute(ir: [.push(1), .push(2), .push(3), .push(4), .le])
        XCTAssertEqual(computer.stack(at: 0), 0)
        XCTAssertEqual(computer.stack(at: 1), 2)
        XCTAssertEqual(computer.stack(at: 2), 1)
    }
    
    func testGeWithStackDepthFour() {
        let computer = try! execute(ir: [.push(1), .push(2), .push(3), .push(4), .ge])
        XCTAssertEqual(computer.stack(at: 0), 1)
        XCTAssertEqual(computer.stack(at: 1), 2)
        XCTAssertEqual(computer.stack(at: 2), 1)
    }
    
    func testAddWithStackDepthFour() {
        let computer = try! execute(ir: [.push(1), .push(2), .push(3), .push(4), .add])
        XCTAssertEqual(computer.stack(at: 0), 7)
        XCTAssertEqual(computer.stack(at: 1), 2)
        XCTAssertEqual(computer.stack(at: 2), 1)
    }
    
    func testSubWithStackDepthFour() {
        let computer = try! execute(ir: [.push(1), .push(2), .push(3), .push(4), .sub])
        XCTAssertEqual(computer.stack(at: 0), 1)
        XCTAssertEqual(computer.stack(at: 1), 2)
        XCTAssertEqual(computer.stack(at: 2), 1)
    }
    
    func testSubTwice() {
        let computer = try! execute(ir: [.push(1), .push(2), .push(3), .sub, .sub])
        XCTAssertEqual(computer.stack(at: 0), 0)
    }
    
    func testMul_0x0() {
        let computer = try! execute(ir: [.push(0), .push(0), .mul])
        XCTAssertEqual(computer.stack(at: 0), 0)
    }
    
    func testMul_1x0() {
        let computer = try! execute(ir: [.push(1), .push(0), .mul])
        XCTAssertEqual(computer.stack(at: 0), 0)
    }
    
    func testMul_1x1() {
        let computer = try! execute(ir: [.push(1), .push(1), .mul])
        XCTAssertEqual(computer.stack(at: 0), 1)
    }
    
    func testMul_4x3() {
        let computer = try! execute(ir: [.push(4), .push(3), .mul])
        XCTAssertEqual(computer.stack(at: 0), 12)
    }
    
    func testMul_255x2() {
        // Multiplication is basically modulo 255.
        let computer = try! execute(ir: [.push(255), .push(2), .mul])
        XCTAssertEqual(computer.stack(at: 0), 254)
    }
    
    func testMul_PopsTheStackToo() {
        let computer = try! execute(ir: [.push(255), .push(254), .push(2), .push(2), .mul])
        XCTAssertEqual(computer.stack(at: 0), 4)
        XCTAssertEqual(computer.stack(at: 1), 254)
        XCTAssertEqual(computer.stack(at: 2), 255)
    }
    
    func testDiv_1div0() {
        // There's a check in the DIV command to ensure that all division by
        // zero yields a result of zero.
        let computer = try! execute(ir: [.push(1), .push(0), .div])
        XCTAssertEqual(computer.stack(at: 0), 0)
    }
    
    func testDiv_0div1() {
        let computer = try! execute(ir: [.push(1), .push(0), .div])
        XCTAssertEqual(computer.stack(at: 0), 0)
    }
    
    func testDiv_2div1() {
        let computer = try! execute(ir: [.push(1), .push(2), .div])
        XCTAssertEqual(computer.stack(at: 0), 2)
    }
    
    func testDiv_4div2() {
        let computer = try! execute(ir: [.push(2), .push(4), .div])
        XCTAssertEqual(computer.stack(at: 0), 2)
    }
    
    func testDiv_3div4() {
        let computer = try! execute(ir: [.push(4), .push(3), .div])
        XCTAssertEqual(computer.stack(at: 0), 0)
    }
    
    func testDiv_PopsTheStackToo() {
        let computer = try! execute(ir: [.push(255), .push(254), .push(2), .push(2), .div])
        XCTAssertEqual(computer.stack(at: 0), 1)
        XCTAssertEqual(computer.stack(at: 1), 254)
        XCTAssertEqual(computer.stack(at: 2), 255)
    }
    
    func testMod_1mod0() {
        // There's a check in the MOD command to ensure that all division by
        // zero yields a result of zero.
        let computer = try! execute(ir: [.push(1), .push(0), .mod])
        XCTAssertEqual(computer.stack(at: 0), 0)
    }
    
    func testMod_1mod1() {
        let computer = try! execute(ir: [.push(255), .push(1), .push(1), .mod])
        XCTAssertEqual(computer.stack(at: 0), 0)
        XCTAssertEqual(computer.stack(at: 1), 255)
    }
    
    func testMod_1mod2() {
        let computer = try! execute(ir: [.push(2), .push(1), .mod])
        XCTAssertEqual(computer.stack(at: 0), 1)
    }
    
    func testMod_7mod4() {
        let computer = try! execute(ir: [.push(4), .push(7), .mod])
        XCTAssertEqual(computer.stack(at: 0), 3)
    }
    
    func testMod_PopsTheStackToo() {
        let computer = try! execute(ir: [.push(255), .push(254), .push(2), .push(3), .mod])
        XCTAssertEqual(computer.stack(at: 0), 1)
        XCTAssertEqual(computer.stack(at: 1), 254)
        XCTAssertEqual(computer.stack(at: 2), 255)
    }
    
    func testLoadWithEmptyStack() {
        let value: UInt8 = 0xab
        let address = 0x0010
        let executor = YertleExecutor()
        executor.configure = {computer in
            computer.dataRAM.store(value: value, to: address)
        }
        let computer = try! executor.execute(ir: [.load(address)])
        XCTAssertEqual(computer.stack(at: 0), value)
    }
    
    func testLoadWithStackDepthOne() {
        let value: UInt8 = 0xab
        let address = 0x0010
        let executor = YertleExecutor()
        executor.configure = {computer in
            computer.dataRAM.store(value: value, to: address)
        }
        let computer = try! executor.execute(ir: [.push(1), .load(address)])
        XCTAssertEqual(computer.stack(at: 0), value)
        XCTAssertEqual(computer.stack(at: 1), 1)
    }
    
    func testLoadWithStackDepthTwo() {
        let value: UInt8 = 0xab
        let address = 0x0010
        let executor = YertleExecutor()
        executor.configure = {computer in
            computer.dataRAM.store(value: value, to: address)
        }
        let computer = try! executor.execute(ir: [.push(1), .push(2), .load(address)])
        XCTAssertEqual(computer.stack(at: 0), value)
        XCTAssertEqual(computer.stack(at: 1), 2)
        XCTAssertEqual(computer.stack(at: 2), 1)
        XCTAssertEqual(computer.stackPointer, 0xfffd)
    }
    
    func testStoreWithStackDepthOne() {
        let address = 0x0010
        let computer = try! execute(ir: [.push(1), .store(address)])
        XCTAssertEqual(computer.dataRAM.load(from: address), 1)
    }
    
    func testStoreWithStackDepthTwo() {
        let address = 0x0010
        let computer = try! execute(ir: [.push(2), .push(1), .store(address)])
        XCTAssertEqual(computer.dataRAM.load(from: address), 1)
        XCTAssertEqual(computer.stack(at: 0), 1)
        XCTAssertEqual(computer.stack(at: 1), 2)
    }
    
    func testStoreWithStackDepthThree() {
        let address = 0x0010
        let computer = try! execute(ir: [.push(3), .push(2), .push(1), .store(address)])
        XCTAssertEqual(computer.dataRAM.load(from: address), 1)
        XCTAssertEqual(computer.stack(at: 0), 1)
        XCTAssertEqual(computer.stack(at: 1), 2)
        XCTAssertEqual(computer.stack(at: 2), 3)
        XCTAssertEqual(computer.stackPointer, 0xfffd)
    }
    
    func testStoreWithStackDepthFour() {
        let address = 0x0010
        let computer = try! execute(ir: [.push(4), .push(3), .push(2), .push(1), .store(address)])
        XCTAssertEqual(computer.dataRAM.load(from: address), 1)
        XCTAssertEqual(computer.stack(at: 0), 1)
        XCTAssertEqual(computer.stack(at: 1), 2)
        XCTAssertEqual(computer.stack(at: 2), 3)
        XCTAssertEqual(computer.stackPointer, 0xfffc)
    }
    
    func testCompileFailsBecauseLabelRedefinesExistingLabel() {
        let foo1 = TokenIdentifier(lineNumber: 1, lexeme: "foo")
        let foo2 = TokenIdentifier(lineNumber: 2, lexeme: "foo")
        let instructions: [YertleInstruction] = [
            .label(foo1),
            .label(foo2)
        ]
        let microcodeGenerator = MicrocodeGenerator()
        microcodeGenerator.generate()
        let assembler = AssemblerBackEnd(microcodeGenerator: microcodeGenerator)
        let compiler = YertleToTurtleMachineCodeCompiler(assembler: assembler)
        XCTAssertThrowsError(try compiler.compile(ir: instructions, base: 0)) {
            let compilerError = $0 as? CompilerError
            XCTAssertNotNil(compilerError)
            XCTAssertEqual(compilerError?.message, "label redefines existing symbol: `foo'")
        }
    }
    
    func testJmp() {
        let foo = TokenIdentifier(lineNumber: 1, lexeme: "foo")
        let instructions: [YertleInstruction] = [
            .push(1),
            .jmp(foo),
            .push(42),
            .label(foo)
        ]
        let computer = try! execute(ir: instructions)
        XCTAssertEqual(computer.stack(at: 0), 1)
    }
    
    func testJalr() {
        let foo = TokenIdentifier(lineNumber: 1, lexeme: "foo")
        let instructions: [YertleInstruction] = [
            .push(1),
            .jalr(foo),
            .push(42),
            .label(foo)
        ]
        let computer = try! execute(ir: instructions)
        XCTAssertEqual(computer.stack(at: 0), 1)
    }
    
    func testJe_TakeTheBranch() {
        let foo = TokenIdentifier(lineNumber: 1, lexeme: "foo")
        let instructions: [YertleInstruction] = [
            .push(1),
            .push(1),
            .je(foo),
            .push(42),
            .label(foo),
            .push(100)
        ]
        let computer = try! execute(ir: instructions)
        XCTAssertEqual(computer.stack(at: 0), 100)
    }
    
    func testJe_DoNotTakeTheBranch() {
        let foo = TokenIdentifier(lineNumber: 1, lexeme: "foo")
        let instructions: [YertleInstruction] = [
            .push(1),
            .push(0),
            .je(foo),
            .push(42),
            .label(foo),
            .push(100)
        ]
        let computer = try! execute(ir: instructions)
        XCTAssertEqual(computer.stack(at: 0), 100)
        XCTAssertEqual(computer.stack(at: 1), 42)
    }
    
    func testJe_StackDepthThree() {
        let foo = TokenIdentifier(lineNumber: 1, lexeme: "foo")
        let instructions: [YertleInstruction] = [
            .push(5), // will end up in 0xfffd
            .push(4), // will end up in B
            .push(3), // will end up in A
            .push(2), // will be popped
            .push(1), // will be popped
            .je(foo),
            .label(foo)
        ]
        let computer = try! execute(ir: instructions)
        XCTAssertEqual(computer.stack(at: 0), 3)
        XCTAssertEqual(computer.stack(at: 1), 4)
        XCTAssertEqual(computer.stack(at: 2), 5)
        XCTAssertEqual(computer.stackPointer, 0xfffd)
    }
    
    func testEnter() {
        let computer = try! execute(ir: [.enter])
        XCTAssertEqual(computer.stack(at: 0), 0x00)
        XCTAssertEqual(computer.stack(at: 1), 0x00)
        XCTAssertEqual(computer.stackPointer, 0xfffe)
        XCTAssertEqual(computer.framePointer, 0xfffe)
    }
    
    func testEnterThenLeave() {
        let computer = try! execute(ir: [.enter, .leave])
        XCTAssertEqual(computer.stackPointer, 0x0000)
        XCTAssertEqual(computer.framePointer, 0x0000)
    }
    
    func testEnterEnter() {
        let computer = try! execute(ir: [.enter, .enter])
        XCTAssertEqual(computer.stack(at: 3), 0x00)
        XCTAssertEqual(computer.stack(at: 2), 0x00)
        XCTAssertEqual(computer.stack(at: 1), 0xff)
        XCTAssertEqual(computer.stack(at: 0), 0xfe)
        XCTAssertEqual(computer.stackPointer, 0xfffc)
        XCTAssertEqual(computer.framePointer, 0xfffc)
    }
    
    func testEnterEnterLeave() {
        let computer = try! execute(ir: [.enter, .enter, .leave])
        XCTAssertEqual(computer.stack(at: 1), 0x00)
        XCTAssertEqual(computer.stack(at: 0), 0x00)
        XCTAssertEqual(computer.stackPointer, 0xfffe)
        XCTAssertEqual(computer.framePointer, 0xfffe)
    }
    
    func testEnterEnterLeaveLeave() {
        let computer = try! execute(ir: [.enter, .enter, .leave, .leave])
        XCTAssertEqual(computer.stackPointer, 0x0000)
        XCTAssertEqual(computer.framePointer, 0x0000)
    }
    
    func testLoadIndirectWithStackDepthTwo() {
        let executor = YertleExecutor()
        executor.configure = {computer in
            computer.dataRAM.store(value: 0xaa, to: 0x0010)
        }
        let computer = try! executor.execute(ir: [.push(0x00), .push(0x10), .loadIndirect])
        XCTAssertEqual(computer.stack(at: 0), 0xaa)
    }
    
    func testLoadIndirectWithStackDepthThree() {
        let executor = YertleExecutor()
        executor.configure = {computer in
            computer.dataRAM.store(value: 0xaa, to: 0x0010)
        }
        let computer = try! executor.execute(ir: [.push(1), .push(0x00), .push(0x10), .loadIndirect])
        XCTAssertEqual(computer.stack(at: 0), 0xaa)
        XCTAssertEqual(computer.stack(at: 1), 1)
    }
    
    func testLoadIndirectWithStackDepthFour() {
        let executor = YertleExecutor()
        executor.configure = {computer in
            computer.dataRAM.store(value: 0xaa, to: 0x0010)
        }
        let computer = try! executor.execute(ir: [.push(1), .push(2), .push(0x00), .push(0x10), .loadIndirect])
        XCTAssertEqual(computer.stack(at: 0), 0xaa)
        XCTAssertEqual(computer.stack(at: 1), 2)
        XCTAssertEqual(computer.stack(at: 2), 1)
    }
    
    func testStoreIndirectWithStackDepthThree() {
        let computer = try! execute(ir: [
            .push(0xaa),
            .push(0x00),
            .push(0x10),
            .storeIndirect
        ])
        XCTAssertEqual(computer.dataRAM.load(from: 0x0010), 0xaa)
        XCTAssertEqual(computer.stack(at: 0), 0xaa)
    }
    
    func testStoreIndirectWithStackDepthFour() {
        let computer = try! execute(ir: [
            .push(0xbb),
            .push(0xaa),
            .push(0x00),
            .push(0x10),
            .storeIndirect
        ])
        XCTAssertEqual(computer.dataRAM.load(from: 0x0010), 0xaa)
        XCTAssertEqual(computer.stack(at: 0), 0xaa)
        XCTAssertEqual(computer.stack(at: 1), 0xbb)
    }
    
    func testStoreIndirectWithStackDepthFive() {
        let computer = try! execute(ir: [
            .push(0xcc),
            .push(0xbb),
            .push(0xaa),
            .push(0xfe),
            .push(0xfe),
            .storeIndirect
        ])
        XCTAssertEqual(computer.dataRAM.load(from: 0xfefe), 0xaa)
        XCTAssertEqual(computer.stack(at: 0), 0xaa)
        XCTAssertEqual(computer.stack(at: 1), 0xbb)
        XCTAssertEqual(computer.stack(at: 2), 0xcc)
    }
}
