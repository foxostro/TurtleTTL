//
//  InstructionROM.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

// Instruction ROM is backed by two ROM buffers.
// This mirrors the physical construction of the Instruction ROM circuit which
// uses two eight-bit EEPROM chips to form a sixteen-bit word.
class InstructionROM: NSObject {
    let size = 32768
    var upperROM: [UInt8]
    var lowerROM: [UInt8]
    
    override init() {
        upperROM = Array<UInt8>()
        upperROM.reserveCapacity(size)
        for _ in 0..<size {
            upperROM.append(0)
        }
        
        lowerROM = Array<UInt8>()
        lowerROM.reserveCapacity(size)
        for _ in 0..<size {
            lowerROM.append(0)
        }
    }
    
    func store(address:Int, value:UInt16) {
        upperROM[address] = UInt8((value & 0xff00) >> 8)
        lowerROM[address] = UInt8( value & 0x00ff)
    }
    
    func store(address:Int, opcode:Int, immediate:Int) {
        upperROM[Int(address)] = UInt8(opcode)
        lowerROM[Int(address)] = UInt8(immediate)
    }
    
    func store(address:Int, instruction:Instruction) {
        store(address: address,
              opcode: Int(instruction.opcode),
              immediate: Int(instruction.immediate))
    }
    
    func load(address:Int) -> Instruction {
        let instruction = Instruction()
        instruction.opcode = upperROM[address]
        instruction.immediate = lowerROM[address]
        return instruction
    }
    
    func store(_ instructions: [Instruction]) {
        for i in 0..<instructions.count {
            store(address: i, instruction: instructions[i])
        }
    }
}
