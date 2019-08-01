//
//  AssemblerBackEnd.swift
//  Simulator
//
//  Created by Andrew Fox on 7/31/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class AssemblerBackEnd: NSObject {
    struct AssemblerBackEndError: Error {
        let message: String
        
        init(format: String, _ args: CVarArg...) {
            message = String(format:format, arguments:args)
        }
    }
    
//    typealias Command = () throws -> ()
    var instructions = [Instruction]()
    private(set) var isAssembling: Bool = false
    let codeGenerator: CodeGenerator
    var symbols = [String:Int]()
    
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
    
    func label(_ name: String) throws {
        assert(isAssembling)
        if symbols[name] == nil {
            symbols[name] = codeGenerator.programCounter
        } else {
            throw AssemblerBackEndError(format: "Duplicate label \"%@\"", name)
        }
    }
    
    func resolveSymbol(_ name: String) throws -> Int {
        assert(isAssembling)
        if let value = symbols[name] {
            return value
        } else {
            throw AssemblerBackEndError(format: "Unrecognized symbol name \"%@\"", name)
        }
    }
    
    // Jump -- Jump to the specified label.
    func jmp(_ name: String) throws {
        assert(isAssembling)
        let address = try resolveSymbol(name)
        try codeGenerator.li("X", (address & 0xff00) >> 8)
        try codeGenerator.li("Y", (address & 0xff))
        codeGenerator.jmp()
        codeGenerator.nop()
        codeGenerator.nop()
    }
}
