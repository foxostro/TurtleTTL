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
        let inst = Instruction(opcode: microcodeGenerator.getOpcode(withMnemonic: "NOP")!, immediate: 0)
        instructions.append(inst)
    }
    
    func hlt() {
        assert(isAssembling)
        let inst = Instruction(opcode: microcodeGenerator.getOpcode(withMnemonic: "HLT")!, immediate: 0)
        instructions.append(inst)
    }
    
    func instruction(withMnemonic mnemonic:String, immediate: Int) {
        assert(isAssembling)
        assert(immediate >= 0 && immediate <= 255)
        let opcode = microcodeGenerator.getOpcode(withMnemonic: mnemonic)!
        let inst = Instruction(opcode: opcode, immediate: immediate)
        instructions.append(inst)
    }
}
