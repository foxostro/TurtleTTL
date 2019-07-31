//
//  Assembler.swift
//  Simulator
//
//  Created by Andrew Fox on 7/30/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class Assembler: NSObject {
    let microcodeGenerator: MicrocodeGenerator
    var instructions = [Instruction]()
    var isAssembling = false
    
    init(microcodeGenerator: MicrocodeGenerator) {
        self.microcodeGenerator = microcodeGenerator
        super.init()
    }
    
    func begin() {
        isAssembling = true
        nop()
    }
    
    func end() {
        isAssembling = false
    }
    
    func nop() {
        assert(isAssembling)
        let nopInstruction = Instruction(opcode: microcodeGenerator.getOpcode(withMnemonic: "NOP")!, immediate: 0)
        instructions.append(nopInstruction)
    }
}
