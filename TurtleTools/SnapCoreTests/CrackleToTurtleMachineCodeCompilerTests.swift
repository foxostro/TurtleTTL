//
//  CrackleToTurtleMachineCodeCompilerTests.swift
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

class CrackleToTurtleMachineCodeCompilerTests: XCTestCase {
    let kFramePointerHi = Int(CrackleToTurtleMachineCodeCompiler.kFramePointerAddressHi)
    let kFramePointerLo = Int(CrackleToTurtleMachineCodeCompiler.kFramePointerAddressLo)
    
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
    
    func compile(_ instructions: [CrackleInstruction]) -> [Instruction] {
        let microcodeGenerator = MicrocodeGenerator()
        microcodeGenerator.generate()
        let assembler = AssemblerBackEnd(microcodeGenerator: microcodeGenerator)
        let compiler = CrackleToTurtleMachineCodeCompiler(assembler: assembler)
        try! compiler.compile(ir: instructions, base: 0)
        let instructions = InstructionFormatter.makeInstructionsWithDisassembly(instructions: assembler.instructions)
        return instructions
    }
    
    func execute(ir: [CrackleInstruction]) throws -> Computer {
        let executor = CrackleExecutor()
        let computer = try executor.execute(ir: ir)
        return computer
    }
    
    func testEmptyProgram() {
        let kFramePointerInitialValue = CrackleToTurtleMachineCodeCompiler.kFramePointerInitialValue
        let kStackPointerInitialValue = CrackleToTurtleMachineCodeCompiler.kStackPointerInitialValue
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
        let kStackPointerInitialValue = UInt16(CrackleToTurtleMachineCodeCompiler.kStackPointerInitialValue)
        let count = 300
        var ir: [CrackleInstruction] = []
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
    
    func testPushTwoDoubleWordValues() {
        let computer = try! execute(ir: [.push16(0x5678), .push16(0x1234)])
        XCTAssertEqual(computer.dataRAM.load(from: 0xfffc), 0x12)
        XCTAssertEqual(computer.dataRAM.load(from: 0xfffd), 0x34)
        XCTAssertEqual(computer.dataRAM.load(from: 0xfffe), 0x56)
        XCTAssertEqual(computer.dataRAM.load(from: 0xffff), 0x78)
        
        XCTAssertEqual(computer.dataRAM.load16(from: 0xfffe), 0x5678)
        XCTAssertEqual(computer.dataRAM.load16(from: 0xfffc), 0x1234)
        
        XCTAssertEqual(computer.stackPointer, 0xfffc)
    
        XCTAssertEqual(computer.stack(at: 0), 0x12)
        XCTAssertEqual(computer.stack(at: 1), 0x34)
        XCTAssertEqual(computer.stack(at: 2), 0x56)
        XCTAssertEqual(computer.stack(at: 3), 0x78)
        
        XCTAssertEqual(computer.stack16(at: 0), 0x1234)
        XCTAssertEqual(computer.stack16(at: 2), 0x5678)
    }
    
    func testPushManyDoubleWordValues() {
        let kStackPointerInitialValue = UInt16(CrackleToTurtleMachineCodeCompiler.kStackPointerInitialValue)
        let count = 1000
        var ir: [CrackleInstruction] = []
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
    
    func testPop16WithStackDepthFive() {
        let computer = try! execute(ir: [.push16(1000), .push16(2000), .push16(3000), .push16(4000), .push16(5000), .pop16])
        XCTAssertEqual(computer.stack16(at: 0), 4000)
        XCTAssertEqual(computer.stack16(at: 2), 3000)
        XCTAssertEqual(computer.stack16(at: 4), 2000)
        XCTAssertEqual(computer.stack16(at: 6), 1000)
        XCTAssertEqual(computer.stackPointer, 0xfff8)
    }
    
    func testPopnWithStackDepthFive() {
        let computer = try! execute(ir: [.push16(1000), .push16(2000), .push16(3000), .push16(4000), .push16(5000), .popn(2)])
        XCTAssertEqual(computer.stack16(at: 0), 4000)
        XCTAssertEqual(computer.stack16(at: 2), 3000)
        XCTAssertEqual(computer.stack16(at: 4), 2000)
        XCTAssertEqual(computer.stack16(at: 6), 1000)
        XCTAssertEqual(computer.stackPointer, 0xfff8)
    }
    
    func testLoadWithEmptyStack() {
        let value: UInt8 = 0xab
        let address = 0x0010
        let executor = CrackleExecutor()
        executor.configure = {computer in
            computer.dataRAM.store(value: value, to: address)
        }
        let computer = try! executor.execute(ir: [.load(address)])
        XCTAssertEqual(computer.stack(at: 0), value)
    }
    
    func testLoadWithStackDepthOne() {
        let value: UInt8 = 0xab
        let address = 0x0010
        let executor = CrackleExecutor()
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
        let executor = CrackleExecutor()
        executor.configure = {computer in
            computer.dataRAM.store(value: value, to: address)
        }
        let computer = try! executor.execute(ir: [.push(1), .push(2), .load(address)])
        XCTAssertEqual(computer.stack(at: 0), value)
        XCTAssertEqual(computer.stack(at: 1), 2)
        XCTAssertEqual(computer.stack(at: 2), 1)
        XCTAssertEqual(computer.stackPointer, 0xfffd)
    }
    
    func testLoad16() {
        let value: UInt16 = 0xabcd
        let address = 0x0010
        let executor = CrackleExecutor()
        executor.configure = {computer in
            computer.dataRAM.store(value: UInt8((value>>8)&0xff), to: address+0)
            computer.dataRAM.store(value: UInt8(value&0xff), to: address+1)
        }
        let computer = try! executor.execute(ir: [.push(1), .push(2), .load16(address)])
        XCTAssertEqual(computer.stack16(at: 0), value)
        XCTAssertEqual(computer.stack(at: 2), 2)
        XCTAssertEqual(computer.stack(at: 3), 1)
        XCTAssertEqual(computer.stackPointer, 0xfffc)
    }
    
    func testStoreImmediate() {
        let address = 0x0010
        let value = 0xff
        let computer = try! execute(ir: [.storeImmediate(address, value)])
        XCTAssertEqual(computer.dataRAM.load(from: address), UInt8(value))
    }
    
    func testStoreImmediate_TruncatesTheValue() {
        let address = 0x0010
        let value = 0xabcd
        let computer = try! execute(ir: [.storeImmediate(address, value)])
        XCTAssertEqual(computer.dataRAM.load(from: address), UInt8(value & 0xff))
    }
    
    func testStoreImmediate16() {
        let address = 0x0010
        let value = 0xabcd
        let computer = try! execute(ir: [.storeImmediate16(address, value)])
        XCTAssertEqual(computer.dataRAM.load16(from: address), UInt16(value))
    }
    
    func testCompileFailsBecauseLabelRedefinesExistingLabel() {
        let instructions: [CrackleInstruction] = [
            .label("foo"),
            .label("foo")
        ]
        let microcodeGenerator = MicrocodeGenerator()
        microcodeGenerator.generate()
        let assembler = AssemblerBackEnd(microcodeGenerator: microcodeGenerator)
        let compiler = CrackleToTurtleMachineCodeCompiler(assembler: assembler)
        XCTAssertThrowsError(try compiler.compile(ir: instructions, base: 0)) {
            let compilerError = $0 as? CompilerError
            XCTAssertNotNil(compilerError)
            XCTAssertEqual(compilerError?.message, "label redefines existing symbol: `foo'")
        }
    }
    
    func testJmp() {
        let instructions: [CrackleInstruction] = [
            .push(1),
            .jmp("foo"),
            .push(42),
            .label("foo")
        ]
        let computer = try! execute(ir: instructions)
        XCTAssertEqual(computer.stack(at: 0), 1)
    }
    
    func testJalr() {
        let instructions: [CrackleInstruction] = [
            .push(1),
            .jalr("foo"),
            .push(42),
            .label("foo")
        ]
        let computer = try! execute(ir: instructions)
        XCTAssertEqual(computer.stack(at: 0), 1)
    }
    
    func testEnter() {
        let computer = try! execute(ir: [.enter])
        XCTAssertEqual(computer.stack16(at: 0), 0x0000)
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
        XCTAssertEqual(computer.stack16(at: 2), 0x0000)
        XCTAssertEqual(computer.stack16(at: 0), 0xfffe)
        XCTAssertEqual(computer.stackPointer, 0xfffc)
        XCTAssertEqual(computer.framePointer, 0xfffc)
    }
    
    func testEnterEnterLeave() {
        let computer = try! execute(ir: [.enter, .enter, .leave])
        XCTAssertEqual(computer.stack16(at: 0), 0x0000)
        XCTAssertEqual(computer.stackPointer, 0xfffe)
        XCTAssertEqual(computer.framePointer, 0xfffe)
    }
    
    func testEnterEnterLeaveLeave() {
        let computer = try! execute(ir: [.enter, .enter, .leave, .leave])
        XCTAssertEqual(computer.stackPointer, 0x0000)
        XCTAssertEqual(computer.framePointer, 0x0000)
    }
    
    func testLoadIndirectN_1() {
        let ir: [CrackleInstruction] = [
            .push16(0x0010),
            .loadIndirectN(1)
        ]
        let executor = CrackleExecutor()
        executor.configure = {computer in
            computer.dataRAM.store(value: 0x01, to: 0x0010)
        }
        let computer = try! executor.execute(ir: ir)
        XCTAssertEqual(computer.stack(at: 0), 0x01)
    }
    
    func testLoadIndirectN_2() {
        let ir: [CrackleInstruction] = [
            .push16(0x0010),
            .loadIndirectN(2)
        ]
        let executor = CrackleExecutor()
        executor.configure = {computer in
            computer.dataRAM.store16(value: 0xabcd, to: 0x0010)
        }
        let computer = try! executor.execute(ir: ir)
        XCTAssertEqual(computer.stack16(at: 0), 0xabcd)
    }
    
    func testLoadIndirectN_3() {
        let ir: [CrackleInstruction] = [
            .push16(0x0010),
            .loadIndirectN(3)
        ]
        let executor = CrackleExecutor()
        executor.configure = {computer in
            computer.dataRAM.store(value: 0x01, to: 0x0010)
            computer.dataRAM.store(value: 0x02, to: 0x0011)
            computer.dataRAM.store(value: 0x03, to: 0x0012)
        }
        let computer = try! executor.execute(ir: ir)
        let address = computer.stackPointer
        XCTAssertEqual(computer.dataRAM.load(from: address + 0), 0x01)
        XCTAssertEqual(computer.dataRAM.load(from: address + 1), 0x02)
        XCTAssertEqual(computer.dataRAM.load(from: address + 2), 0x03)
    }
    
    func testTAC_Add() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 1, to: a)
            computer.dataRAM.store(value: 2, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_add(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 1)
        XCTAssertEqual(computer.dataRAM.load(from: b), 2)
        XCTAssertEqual(computer.dataRAM.load(from: c), 3)
    }
    
    func testTAC_Add16_0x0000_and_0x0000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x0000, to: a)
            computer.dataRAM.store16(value: 0x0000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_add16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x0000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0000)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0x0000)
    }
    
    func testTAC_Add16_0x0001_and_0x0001() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x0001, to: a)
            computer.dataRAM.store16(value: 0x0001, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_add16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x0001)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0001)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0x0002)
    }
    
    func testTAC_Add16_0xfffe_and_0x0001() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0xfffe, to: a)
            computer.dataRAM.store16(value: 0x0001, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_add16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0xfffe)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0001)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0xffff)
    }
    
    func testTAC_Add16_0xffff_and_0x0001() {
        // TODO: ADD16 does not set the carry flag. Should it?
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0xffff, to: a)
            computer.dataRAM.store16(value: 0x0001, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_add16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0xffff)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0001)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0x0000)
    }
    
    func testTAC_Sub() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 3, to: a)
            computer.dataRAM.store(value: 2, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_sub(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 3)
        XCTAssertEqual(computer.dataRAM.load(from: b), 2)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Sub16_0x0001_and_0x0001() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x0001, to: a)
            computer.dataRAM.store16(value: 0x0001, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_sub16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x0001)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0001)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0x0000)
    }
    
    func testTAC_Sub16_0x0000_and_0x0001() {
        // TODO: SUB16 does not set the carry flag. Should it?
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x0000, to: a)
            computer.dataRAM.store16(value: 0x0001, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_sub16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x0000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0001)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0xffff)
    }
    
    func testTAC_Mul_0x0() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 0, to: a)
            computer.dataRAM.store(value: 0, to: b)
            computer.dataRAM.store(value: 0xff, to: c)
        }
        let computer = try! executor.execute(ir: [.tac_mul(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 0)
        XCTAssertEqual(computer.dataRAM.load(from: b), 0)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Mul_1x0() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 1, to: a)
            computer.dataRAM.store(value: 0, to: b)
            computer.dataRAM.store(value: 0xff, to: c)
        }
        let computer = try! executor.execute(ir: [.tac_mul(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 1)
        XCTAssertEqual(computer.dataRAM.load(from: b), 0)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Mul_1x1() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 1, to: a)
            computer.dataRAM.store(value: 1, to: b)
            computer.dataRAM.store(value: 0xff, to: c)
        }
        let computer = try! executor.execute(ir: [.tac_mul(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 1)
        XCTAssertEqual(computer.dataRAM.load(from: b), 1)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Mul_4x3() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 4, to: a)
            computer.dataRAM.store(value: 3, to: b)
            computer.dataRAM.store(value: 0xff, to: c)
        }
        let computer = try! executor.execute(ir: [.tac_mul(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 4)
        XCTAssertEqual(computer.dataRAM.load(from: b), 3)
        XCTAssertEqual(computer.dataRAM.load(from: c), 12)
    }
    
    func testTAC_Mul_255x2() {
        // Multiplication is basically modulo 255.
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 255, to: a)
            computer.dataRAM.store(value: 2, to: b)
            computer.dataRAM.store(value: 0xff, to: c)
        }
        let computer = try! executor.execute(ir: [.tac_mul(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 255)
        XCTAssertEqual(computer.dataRAM.load(from: b), 2)
        XCTAssertEqual(computer.dataRAM.load(from: c), 254)
    }
    
    func testTAC_Mul16_0x0() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x0000, to: a)
            computer.dataRAM.store16(value: 0x0000, to: b)
            computer.dataRAM.store16(value: 0xffff, to: c)
        }
        let computer = try! executor.execute(ir: [.tac_mul16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x0000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0000)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0x0000)
    }
    
    func testTAC_Mul16_255x2() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x00ff, to: a)
            computer.dataRAM.store16(value: 0x0002, to: b)
            computer.dataRAM.store16(value: 0xffff, to: c)
        }
        let computer = try! executor.execute(ir: [.tac_mul16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x00ff)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0002)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0x01fe)
    }
    
    func testTAC_Mul16_2000x2000() {
        // Multiplication is basically modulo 65536.
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 2000, to: a)
            computer.dataRAM.store16(value: 2000, to: b)
            computer.dataRAM.store16(value: 0xffff, to: c)
        }
        let computer = try! executor.execute(ir: [.tac_mul16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 2000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 2000)
        XCTAssertEqual(computer.dataRAM.load16(from: c), UInt16((2000*2000)%65536))
    }
    
    func testTAC_Div_1div0() {
        // There's a check in the DIV command to ensure that all division by
        // zero yields a result of zero.
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 1, to: a)
            computer.dataRAM.store(value: 0, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_div(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 1)
        XCTAssertEqual(computer.dataRAM.load(from: b), 0)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Div_0div1() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 0, to: a)
            computer.dataRAM.store(value: 1, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_div(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 0)
        XCTAssertEqual(computer.dataRAM.load(from: b), 1)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Div_2div1() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 2, to: a)
            computer.dataRAM.store(value: 1, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_div(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 2)
        XCTAssertEqual(computer.dataRAM.load(from: b), 1)
        XCTAssertEqual(computer.dataRAM.load(from: c), 2)
    }
    
    func testTAC_Div_4div2() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 4, to: a)
            computer.dataRAM.store(value: 2, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_div(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 4)
        XCTAssertEqual(computer.dataRAM.load(from: b), 2)
        XCTAssertEqual(computer.dataRAM.load(from: c), 2)
    }
    
    func testTAC_Div_3div4() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 3, to: a)
            computer.dataRAM.store(value: 4, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_div(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 3)
        XCTAssertEqual(computer.dataRAM.load(from: b), 4)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Div16_0x0001_div_0x0000() {
        // There's a check in the DIV command to ensure that all division by
        // zero yields a result of zero.
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x0001, to: a)
            computer.dataRAM.store16(value: 0x0000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_div16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x0001)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0000)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0x0000)
    }
    
    func testTAC_Div16_0x0001_div_0x0100() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x0001, to: a)
            computer.dataRAM.store16(value: 0x0100, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_div16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x0001)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0100)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0x0000)
    }
    
    func testTAC_Div16_0x0001_div_0x0001() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x0001, to: a)
            computer.dataRAM.store16(value: 0x0001, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_div16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x0001)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0001)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0x0001)
    }
    
    func testTAC_Div16_0x0080_div_0x0002() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x0080, to: a)
            computer.dataRAM.store16(value: 0x0002, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_div16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x0080)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0002)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0x0040)
    }
    
    func testTAC_Div16_0x00ff_div_0x00ff() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x00ff, to: a)
            computer.dataRAM.store16(value: 0x00ff, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_div16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x00ff)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x00ff)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0x0001)
    }
    
    func testTAC_Div16_0x0100_div_0x0001() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x0100, to: a)
            computer.dataRAM.store16(value: 0x0001, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_div16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x0100)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0001)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0x0100)
    }
    
    func testTAC_Div16_0xffff_div_0xffff() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0xffff, to: a)
            computer.dataRAM.store16(value: 0xffff, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_div16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0xffff)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0xffff)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0x0001)
    }
    
    func testTAC_Mod_1mod0() {
        // There's a check in the MOD command to ensure that all division by
        // zero yields a result of zero.
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 1, to: a)
            computer.dataRAM.store(value: 0, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_mod(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 1)
        XCTAssertEqual(computer.dataRAM.load(from: b), 0)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Mod_1mod1() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 1, to: a)
            computer.dataRAM.store(value: 1, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_mod(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 1)
        XCTAssertEqual(computer.dataRAM.load(from: b), 1)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Mod_1mod2() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 1, to: a)
            computer.dataRAM.store(value: 2, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_mod(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 1)
        XCTAssertEqual(computer.dataRAM.load(from: b), 2)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Mod_7mod4() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 7, to: a)
            computer.dataRAM.store(value: 4, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_mod(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 7)
        XCTAssertEqual(computer.dataRAM.load(from: b), 4)
        XCTAssertEqual(computer.dataRAM.load(from: c), 3)
    }
    
    func testTAC_Mod16_1_mod_0() {
        // There's a check in the MOD16 command to ensure that all division by
        // zero yields a result of zero.
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 1, to: a)
            computer.dataRAM.store16(value: 0, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_mod16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 1)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 0)
    }
    
    func testTAC_Mod16_1_mod_1() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 1, to: a)
            computer.dataRAM.store16(value: 1, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_mod16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 1)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 1)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 1%1)
    }
    
    func testTAC_Mod16_1000_mod_10() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 1000, to: a)
            computer.dataRAM.store16(value: 10, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_mod16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 1000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 10)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 1000%10)
    }
    
    func testTAC_Mod16_10_mod_1000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 10, to: a)
            computer.dataRAM.store16(value: 1000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_mod16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 10)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 1000)
        XCTAssertEqual(computer.dataRAM.load16(from: c), 10%1000)
    }
    
    func testTAC_Eq_42_eq_42() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 42, to: a)
            computer.dataRAM.store(value: 42, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_eq(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 42)
        XCTAssertEqual(computer.dataRAM.load(from: b), 42)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Eq_42_eq_0() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 42, to: a)
            computer.dataRAM.store(value: 0, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_eq(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 42)
        XCTAssertEqual(computer.dataRAM.load(from: b), 0)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Ne_42_ne_42() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 42, to: a)
            computer.dataRAM.store(value: 42, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_ne(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 42)
        XCTAssertEqual(computer.dataRAM.load(from: b), 42)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Ne_42_ne_0() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 42, to: a)
            computer.dataRAM.store(value: 0, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_ne(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 42)
        XCTAssertEqual(computer.dataRAM.load(from: b), 0)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Lt_42_lt_42() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 42, to: a)
            computer.dataRAM.store(value: 42, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_lt(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 42)
        XCTAssertEqual(computer.dataRAM.load(from: b), 42)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Lt_42_lt_0() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 42, to: a)
            computer.dataRAM.store(value: 0, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_lt(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 42)
        XCTAssertEqual(computer.dataRAM.load(from: b), 0)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Lt_0_lt_42() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 0, to: a)
            computer.dataRAM.store(value: 42, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_lt(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 0)
        XCTAssertEqual(computer.dataRAM.load(from: b), 42)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Gt_42_gt_42() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 42, to: a)
            computer.dataRAM.store(value: 42, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_gt(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 42)
        XCTAssertEqual(computer.dataRAM.load(from: b), 42)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Gt_42_gt_0() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 42, to: a)
            computer.dataRAM.store(value: 0, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_gt(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 42)
        XCTAssertEqual(computer.dataRAM.load(from: b), 0)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Gt_0_gt_42() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 0, to: a)
            computer.dataRAM.store(value: 42, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_gt(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 0)
        XCTAssertEqual(computer.dataRAM.load(from: b), 42)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Le_42_le_42() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 42, to: a)
            computer.dataRAM.store(value: 42, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_le(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 42)
        XCTAssertEqual(computer.dataRAM.load(from: b), 42)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Le_42_le_0() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 42, to: a)
            computer.dataRAM.store(value: 0, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_le(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 42)
        XCTAssertEqual(computer.dataRAM.load(from: b), 0)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Le_0_le_42() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 0, to: a)
            computer.dataRAM.store(value: 42, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_le(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 0)
        XCTAssertEqual(computer.dataRAM.load(from: b), 42)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Ge_42_ge_42() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 42, to: a)
            computer.dataRAM.store(value: 42, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_ge(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 42)
        XCTAssertEqual(computer.dataRAM.load(from: b), 42)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Ge_42_ge_0() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 42, to: a)
            computer.dataRAM.store(value: 0, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_ge(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 42)
        XCTAssertEqual(computer.dataRAM.load(from: b), 0)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Ge_0_ge_42() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store(value: 0, to: a)
            computer.dataRAM.store(value: 42, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_ge(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load(from: a), 0)
        XCTAssertEqual(computer.dataRAM.load(from: b), 42)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Eq16_0x0000_and_0x0000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0, to: a)
            computer.dataRAM.store16(value: 0, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_eq16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Eq16_0xffff_and_0x00ff() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0xffff, to: a)
            computer.dataRAM.store16(value: 0x00ff, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_eq16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0xffff)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x00ff)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Ne16_0x0000_and_0x0000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0, to: a)
            computer.dataRAM.store16(value: 0, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_ne16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Ne16_0xffff_and_0x00ff() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0xffff, to: a)
            computer.dataRAM.store16(value: 0x00ff, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_ne16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0xffff)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x00ff)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Lt16_0x0000_lt_0x1000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x0000, to: a)
            computer.dataRAM.store16(value: 0x1000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_lt16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x0000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x1000)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Lt16_0x1000_lt_0x1000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x1000, to: a)
            computer.dataRAM.store16(value: 0x1000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_lt16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x1000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x1000)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Lt16_0x1000_lt_0x0000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x1000, to: a)
            computer.dataRAM.store16(value: 0x0000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_lt16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x1000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0000)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Gt16_0x0000_gt_0x1000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x0000, to: a)
            computer.dataRAM.store16(value: 0x1000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_gt16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x0000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x1000)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Gt16_0x1000_gt_0x1000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x1000, to: a)
            computer.dataRAM.store16(value: 0x1000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_gt16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x1000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x1000)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Gt16_0x1000_gt_0x0000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x1000, to: a)
            computer.dataRAM.store16(value: 0x0000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_gt16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x1000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0000)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Le16_0x0000_le_0x1000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x0000, to: a)
            computer.dataRAM.store16(value: 0x1000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_le16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x0000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x1000)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Le16_0x1000_le_0x1000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x1000, to: a)
            computer.dataRAM.store16(value: 0x1000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_le16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x1000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x1000)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Le16_0x1000_le_0x0000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x1000, to: a)
            computer.dataRAM.store16(value: 0x0000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_le16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x1000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0000)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Ge16_0x0000_ge_0x1000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x0000, to: a)
            computer.dataRAM.store16(value: 0x1000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_ge16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x0000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x1000)
        XCTAssertEqual(computer.dataRAM.load(from: c), 0)
    }
    
    func testTAC_Ge16_0x1000_ge_0x1000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x1000, to: a)
            computer.dataRAM.store16(value: 0x1000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_ge16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x1000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x1000)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testTAC_Ge16_0x1000_ge_0x0000() {
        let a = 0x0104
        let b = 0x0108
        let c = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0x1000, to: a)
            computer.dataRAM.store16(value: 0x0000, to: b)
        }
        let computer = try! executor.execute(ir: [.tac_ge16(c, a, b)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0x1000)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x0000)
        XCTAssertEqual(computer.dataRAM.load(from: c), 1)
    }
    
    func testCopyWordZeroExtend() {
        let a = 0x0104
        let b = 0x0108
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0xcafe, to: a)
            computer.dataRAM.store16(value: 0xbeef, to: b)
        }
        let computer = try! executor.execute(ir: [.copyWordZeroExtend(b, a)])
        XCTAssertEqual(computer.dataRAM.load16(from: a), 0xcafe)
        XCTAssertEqual(computer.dataRAM.load16(from: b), 0x00ca)
    }
    
    func testCopyWords_0() {
        let dst = 0x0104
        let src = 0x0108
        let count = 0
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0xcafe, to: src)
            computer.dataRAM.store16(value: 0xbeef, to: dst)
        }
        let computer = try! executor.execute(ir: [.copyWords(dst, src, count)])
        XCTAssertEqual(computer.dataRAM.load16(from: src), 0xcafe)
        XCTAssertEqual(computer.dataRAM.load16(from: dst), 0xbeef)
    }
    
    func testCopyWords_2() {
        let dst = 0x0104
        let src = 0x0108
        let count = 4
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0xcafe, to: src+0)
            computer.dataRAM.store16(value: 0xcafe, to: src+2)
            computer.dataRAM.store16(value: 0xbeef, to: dst+0)
            computer.dataRAM.store16(value: 0xbeef, to: dst+2)
        }
        let computer = try! executor.execute(ir: [.copyWords(dst, src, count)])
        XCTAssertEqual(computer.dataRAM.load16(from: src+0), 0xcafe)
        XCTAssertEqual(computer.dataRAM.load16(from: src+2), 0xcafe)
        XCTAssertEqual(computer.dataRAM.load16(from: dst+0), 0xcafe)
        XCTAssertEqual(computer.dataRAM.load16(from: dst+2), 0xcafe)
    }
    
    func testCopyWordsIndirectSource() {
        let dst = 0x0104
        let src = 0x0108
        let srcPtr = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0xcdcd, to: dst)
            computer.dataRAM.store16(value: 0xcafe, to: src)
            computer.dataRAM.store16(value: UInt16(src), to: srcPtr)
        }
        let computer = try! executor.execute(ir: [.copyWordsIndirectSource(dst, srcPtr, 2)])
        XCTAssertEqual(computer.dataRAM.load16(from: dst), 0xcafe)
        XCTAssertEqual(computer.dataRAM.load16(from: src), 0xcafe)
        XCTAssertEqual(computer.dataRAM.load16(from: srcPtr), UInt16(src))
    }
    
    func testCopyWordsIndirectDestination() {
        let dst = 0x0104
        let src = 0x0108
        let dstPtr = 0x010a
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0xcdcd, to: dst)
            computer.dataRAM.store16(value: 0xcafe, to: src)
            computer.dataRAM.store16(value: UInt16(dst), to: dstPtr)
        }
        let computer = try! executor.execute(ir: [.copyWordsIndirectDestination(dstPtr, src, 2)])
        XCTAssertEqual(computer.dataRAM.load16(from: dst), 0xcafe)
        XCTAssertEqual(computer.dataRAM.load16(from: src), 0xcafe)
        XCTAssertEqual(computer.dataRAM.load16(from: dstPtr), UInt16(dst))
    }
    
    func testCopyWordsIndirectDestinationIndirectSource() {
        let dst = 0x0104
        let src = 0x0108
        let dstPtr = 0x010a
        let srcPtr = 0x010c
        let executor = CrackleExecutor()
        executor.configure = { (computer: Computer) in
            computer.dataRAM.store16(value: 0xcdcd, to: dst)
            computer.dataRAM.store16(value: 0xcafe, to: src)
            computer.dataRAM.store16(value: UInt16(dst), to: dstPtr)
            computer.dataRAM.store16(value: UInt16(src), to: srcPtr)
        }
        let computer = try! executor.execute(ir: [.copyWordsIndirectDestinationIndirectSource(dstPtr, srcPtr, 2)])
        XCTAssertEqual(computer.dataRAM.load16(from: dst), 0xcafe)
        XCTAssertEqual(computer.dataRAM.load16(from: src), 0xcafe)
        XCTAssertEqual(computer.dataRAM.load16(from: dstPtr), UInt16(dst))
        XCTAssertEqual(computer.dataRAM.load16(from: srcPtr), UInt16(src))
    }
    
    func testJz_TakeTheBranch() {
        let a = 0x0100
        let b = 0x0102
        let computer = try! execute(ir: [
            .storeImmediate(a, 0xaa),
            .storeImmediate(b, 0),
            .tac_jz(".L0", b),
            .storeImmediate(a, 0xbb),
            .label(".L0")
        ])
        XCTAssertEqual(computer.dataRAM.load(from: a), 0xaa)
    }
    
    func testJz_DoNotTakeTheBranch() {
        let a = 0x0100
        let b = 0x0102
        let computer = try! execute(ir: [
            .storeImmediate(a, 0xaa),
            .storeImmediate(b, 1),
            .tac_jz(".L0", b),
            .storeImmediate(a, 0xbb),
            .label(".L0")
        ])
        XCTAssertEqual(computer.dataRAM.load(from: a), 0xbb)
    }
}
