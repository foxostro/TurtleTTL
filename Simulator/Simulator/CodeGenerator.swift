//
//  CodeGenerator.swift
//  Simulator
//
//  Created by Andrew Fox on 7/30/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class CodeGenerator: NSObject {
    struct CodeGeneratorError: Error {
        let message: String
        
        init(format: String, _ args: CVarArg...) {
            message = String(format:format, arguments:args)
        }
    }
    
    let microcodeGenerator: MicrocodeGenerator
    var instructions = [Instruction]()
    private(set) var isAssembling: Bool = false
    
    init(microcodeGenerator: MicrocodeGenerator) {
        self.microcodeGenerator = microcodeGenerator
        super.init()
    }
    
    // Begin emitting instructions.
    func begin() {
        isAssembling = true
        nop()
    }
    
    // End emitting instructions.
    // After this call, the client can copy instructions out of "instructions".
    func end() {
        isAssembling = false
    }
    
    // Produce a generic instruction with the specified immediate value.
    func instruction(withMnemonic mnemonic:String, immediate: Int) throws {
        assert(isAssembling)
        if immediate < 0 || immediate > 255 {
            throw CodeGeneratorError(format: "Immediate value %d is not in [0,255].", immediate)
        }
        let maybeOpcode = microcodeGenerator.getOpcode(withMnemonic: mnemonic)
        if let opcode = maybeOpcode {
            let inst = Instruction(opcode: opcode, immediate: immediate)
            instructions.append(inst)
        } else {
            throw CodeGeneratorError(format: "Unrecognized mnemonic \"%@\"", mnemonic)
        }
    }
    
    // No Operation -- Do nothing
    func nop() {
        assert(isAssembling)
        try! instruction(withMnemonic: "NOP", immediate: 0)
    }
    
    // Halt -- Halt the computer until reset
    func hlt() {
        assert(isAssembling)
        try! instruction(withMnemonic: "HLT", immediate: 0)
    }
    
    // Move -- Copy a value from one bus device to another.
    func mov(_ destination: String, _ source: String, _ immediate: Int) throws {
        assert(isAssembling)
        let mnemonic = String(format: "MOV %@, %@", destination, source)
        try instruction(withMnemonic: mnemonic, immediate: immediate)
    }
    
    // Move -- Copy a value from one bus device to another.
    func mov(_ destination: String, _ source: String) throws {
        assert(isAssembling)
        let mnemonic = String(format: "MOV %@, %@", destination, source)
        try instruction(withMnemonic: mnemonic, immediate: 0)
    }
    
    // Load Immediate -- Loads an immediate value to the specified destination
    func li(_ destination: String, _ immediate: Int) throws {
        assert(isAssembling)
        try mov(destination, "C", immediate)
    }
    
    // Addition -- The ALU adds the contents of the A and B registers and moves
    // the result to the specified destination bus device.
    func add(_ destination: String) throws {
        assert(isAssembling)
        let mnemonic = String(format: "ALU %@", destination)
        try instruction(withMnemonic: mnemonic, immediate: 0b011001)
    }
    
    // Jump -- Jump to the address specified by the XY register pair.
    func jmp() {
        assert(isAssembling)
        try! instruction(withMnemonic: "JMP", immediate: 0)
    }
    
    // Jump on Carry -- If the carry flag is set then jump to the address
    // specified by the XY register pair. Otherwise, do nothing.
    func jc() {
        assert(isAssembling)
        try! instruction(withMnemonic: "JC", immediate: 0)
    }
}
