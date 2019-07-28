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
    
    func store(opcode:Int, value:UInt16) {
        upperROM[opcode] = UInt8((value & 0xff00) >> 8)
        lowerROM[opcode] = UInt8( value & 0x00ff)
    }
    
    func load(opcode:Int) -> UInt16 {
        return UInt16(upperROM[opcode])<<8 | UInt16(lowerROM[opcode])
    }
}
