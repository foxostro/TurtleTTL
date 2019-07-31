//
//  MicrocodeGenerator.swift
//  Simulator
//
//  Created by Andrew Fox on 7/30/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class MicrocodeGenerator: NSObject {
    let microcode = InstructionDecoder()
    
    let NOP = 0
    let nopCtl = ControlWord()
    
    func generate() {
        microcode.store(opcode: NOP, controlWord: nopCtl)
    }
}
