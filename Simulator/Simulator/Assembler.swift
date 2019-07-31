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
    var isAssembling: Bool = false {
        didSet {
            if (isAssembling) {
                nop()
            }
        }
    }
    
    init(microcodeGenerator: MicrocodeGenerator) {
        self.microcodeGenerator = microcodeGenerator
        super.init()
    }
    
    // Begin emitting instructions.
    func begin() {
        isAssembling = true
    }
    
    // End emitting instructions.
    // After this call, the client can copy instructions out of "instructions".
    func end() {
        isAssembling = false
    }
    
    // Produce a generic instruction with the specified immediate value.
    func instruction(withMnemonic mnemonic:String, immediate: Int) {
        assert(isAssembling)
        assert(immediate >= 0 && immediate <= 255)
        let opcode = microcodeGenerator.getOpcode(withMnemonic: mnemonic)!
        let inst = Instruction(opcode: opcode, immediate: immediate)
        instructions.append(inst)
    }
    
    // No Operation -- Do nothing
    func nop() {
        assert(isAssembling)
        instruction(withMnemonic: "NOP", immediate: 0)
    }
    
    // Halt -- Halt the computer until reset
    func hlt() {
        assert(isAssembling)
        instruction(withMnemonic: "HLT", immediate: 0)
    }
    
    // Move -- Copy a value from one bus device to another.
    func mov(_ destination: String, _ source: String, _ immediate: Int) {
        assert(isAssembling)
        let mnemonic = String(format: "MOV %@, %@", destination, source)
        instruction(withMnemonic: mnemonic, immediate: immediate)
    }
    
    // Move -- Copy a value from one bus device to another.
    func mov(_ destination: String, _ source: String) {
        assert(isAssembling)
        let mnemonic = String(format: "MOV %@, %@", destination, source)
        instruction(withMnemonic: mnemonic, immediate: 0)
    }
    
    // Load Immediate -- Loads an immediate value to the specified destination
    func li(_ destination: String, _ immediate: Int) {
        assert(isAssembling)
        mov(destination, "C", immediate)
    }
    
    // Addition -- The ALU adds the contents of the A and B registers and moves
    // the result to the specified destination bus device.
    func add(_ destination: String) {
        assert(isAssembling)
        let mnemonic = String(format: "ALU %@", destination)
        instruction(withMnemonic: mnemonic, immediate: 0b011001)
    }
}
