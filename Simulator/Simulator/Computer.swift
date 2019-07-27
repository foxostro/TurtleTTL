//
//  Computer.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class Computer: NSObject {
    let registerA = Register()
    let registerB = Register()
    let registerC = Register()
    let registerD = Register()
    let registerX = Register()
    let registerY = Register()
    let registerFlags = Register()
    let dataRAM = RAM()
    let programCounter = ProgramCounter()
    let instructionROM = InstructionROM()
    let instructionRegister = InstructionRegister()
    let instructionDecoder = InstructionDecoder()
    let controlWordRegister = ControlWord()
    let alu = ALU()
    var bus:UInt8 = 0
    
    func setContentsOfInstructionROM(withContents contents:[UInt16]) {
        assert(contents.count == 32768)
        instructionROM.contents = contents
    }
    
    func setContentsOfInstructionDecoder(withContents contents:[UInt16]) {
        assert(contents.count == 131072)
        instructionDecoder.contents = contents
    }
    
    func reset() {
        programCounter.contents = 0
        for _ in 1...3 {
            haltlessTick()
            programCounter.contents = 0
        }
    }
    
    func tick() {
        if (!controlWordRegister.HLT) {
            haltlessTick()
        }
    }
    
    func haltlessTick() {
        let pc = programCounter.contents
        programCounter.increment()
        
        let newInstruction = instructionROM.contents[Int(pc)]
        let oldInstruction = instructionRegister.contents
        instructionRegister.contents = newInstruction
        
        let opcode:UInt8 = UInt8(oldInstruction >> 8 & 0xff)
        let immediate:UInt8 = UInt8(oldInstruction & 0xff)
        
        registerC.contents = immediate;
        
        let newControl = instructionDecoder.contents[Int(opcode)]
        processControlSignals()
        controlWordRegister.contents = newControl
    }
    
    fileprivate func processControlSignals() {
        bus = 0
        alu.update()
        
        if (controlWordRegister.CO) {
            bus = registerC.contents
        }
        if (controlWordRegister.YO) {
            bus = registerY.contents
        }
        if (controlWordRegister.XO) {
            bus = registerX.contents
        }
        if (controlWordRegister.MO) {
            bus = dataRAM.contents[valueOfXYPair()]
        }
        if (controlWordRegister.EO) {
            bus = alu.result
        }
        if (controlWordRegister.FI) {
            registerFlags.contents = UInt8(alu.carryFlag | alu.equalFlag<<1)
        }
        if (controlWordRegister.AO) {
            bus = registerA.contents
        }
        if (controlWordRegister.BO) {
            bus = registerB.contents
        }
        
        if (controlWordRegister.YI) {
            registerY.contents = bus
        }
        if (controlWordRegister.XI) {
            registerX.contents = bus
        }
        if (controlWordRegister.AI) {
            registerA.contents = bus
        }
        if (controlWordRegister.BI) {
            registerB.contents = bus
        }
        if (controlWordRegister.DI) {
            registerD.contents = bus
        }
        if (controlWordRegister.MI) {
            dataRAM.contents[valueOfXYPair()] = bus
        }
        if (controlWordRegister.J) {
            programCounter.contents = UInt16(valueOfXYPair())
        }
    }
    
    fileprivate func valueOfXYPair() -> Int {
        return Int(registerX.contents<<8 | registerY.contents)
    }
}
