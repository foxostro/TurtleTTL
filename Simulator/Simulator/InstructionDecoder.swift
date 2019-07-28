//
//  InstructionDecoder.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

// Instruction Decoder is backed by two ROM buffers.
// This mirrors the physical construction of the Instruction Decoder circuit
// which uses two eight-bit EEPROM chips to form a sixteen-bit word.
class InstructionDecoder: NSObject {
    let size = 131072
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
    
    func load(opcode:Int, carryFlag:Int) -> UInt16 {
        return load(address: makeAddress(opcode: opcode, carryFlag: carryFlag))
    }
    
    func load(address:Int) -> UInt16 {
        return UInt16(upperROM[address])<<8 | UInt16(lowerROM[address])
    }
    
    func store(opcode:Int, controlWord:ControlWord) {
        store(opcode: opcode, carryFlag: 0, controlWord: controlWord)
        store(opcode: opcode, carryFlag: 1, controlWord: controlWord)
    }
    
    func store(opcode:Int, carryFlag:Int, controlWord:ControlWord) {
        store(address: makeAddress(opcode:opcode, carryFlag:carryFlag),
              value: controlWord.contents)
    }
    
    func store(address:Int, value:UInt16) {
        upperROM[address] = UInt8((value & 0xff00) >> 8)
        lowerROM[address] = UInt8( value & 0x00ff)
    }
    
    func makeAddress(opcode:Int, carryFlag:Int) -> Int {
        // The physical construction of the instruction decoder circuit has the
        // opcode feeding into the lower eight bits of the ROM address.
        // The flags aren't hooked up yet, but I would use bits 8 and 9.
        return carryFlag<<8 | opcode
    }
}
