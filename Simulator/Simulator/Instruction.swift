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
    var value:UInt16 {
        return UInt16(Int(opcode) << 8 | Int(immediate))
    }
    override var description: String {
        return String(format: "{opcode=0x%x, immediate=0x%x}", opcode, immediate)
    }
}
