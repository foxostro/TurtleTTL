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
    let size: Int = 32768
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
    
    func store(address:UInt16, value:UInt16) {
        upperROM[Int(address)] = UInt8((value & 0xff00) >> 8)
        lowerROM[Int(address)] = UInt8( value & 0x00ff)
    }
    
    func store(address:Int, value:UInt16) {
        store(address: UInt16(address), value: value)
    }
    
    func load(address:UInt16) -> UInt16 {
        return UInt16(upperROM[Int(address)])<<8 | UInt16(lowerROM[Int(address)])
    }
    
    func load(address:Int) -> UInt16 {
        return load(address: UInt16(address))
    }
}
