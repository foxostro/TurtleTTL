//
//  AssemblerBackEnd.swift
//  Simulator
//
//  Created by Andrew Fox on 7/31/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class AssemblerBackEnd: NSObject {
//    typealias Command = () throws -> ()
    var instructions = [Instruction]()
    private(set) var isAssembling: Bool = false
    let codeGenerator: CodeGenerator
    
    required init(codeGenerator: CodeGenerator) {
        self.codeGenerator = codeGenerator
        super.init()
    }
    
    // Begin emitting instructions.
    func begin() {
        isAssembling = true
        codeGenerator.begin()
    }
    
    // End emitting instructions.
    // After this call, the client can copy instructions out of "instructions".
    func end() {
        isAssembling = false
        instructions = codeGenerator.instructions
    }
    
    // No Operation -- Do nothing
    func nop() {
        assert(isAssembling)
        codeGenerator.nop()
    }
    
    // Halt -- Halt the computer until reset
    func hlt() {
        assert(isAssembling)
        codeGenerator.hlt()
    }
    
    // Move -- Copy a value from one bus device to another.
    func mov(_ destination: String, _ source: String) throws {
        assert(isAssembling)
        try codeGenerator.mov(destination, source)
    }
    
    // Load Immediate -- Loads an immediate value to the specified destination
    func li(_ destination: String, _ immediate: Int) throws {
        assert(isAssembling)
        try codeGenerator.li(destination, immediate)
    }
    
    // Addition -- The ALU adds the contents of the A and B registers and moves
    // the result to the specified destination bus device.
    func add(_ destination: String) throws {
        assert(isAssembling)
        try codeGenerator.add(destination)
    }
}
