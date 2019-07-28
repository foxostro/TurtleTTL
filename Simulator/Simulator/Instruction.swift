//
//  Instruction.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class Instruction: NSObject {
    var opcode:UInt8 = 0
    var immediate:UInt8 = 0
    
    override init() {
    }
    
    init(opcode: Int, immediate: Int) {
        self.opcode = UInt8(opcode)
        self.immediate = UInt8(immediate)
    }
    
    var value:UInt16 {
        return UInt16(Int(opcode) << 8 | Int(immediate))
    }
    
    override var description: String {
        return String(format: "{op=0x%x, imm=0x%x}", opcode, immediate)
    }
}
