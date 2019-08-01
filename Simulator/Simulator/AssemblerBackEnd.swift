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
    
    var instructions = [Instruction]()
    private(set) var isAssembling: Bool = false
    let codeGenerator: CodeGenerator
    var symbols = [String:Int]()
    typealias Command = () throws -> ()
    var commands = [Command]()
    var programCounter = 0
    
    required init(codeGenerator: CodeGenerator) {
        self.codeGenerator = codeGenerator
        super.init()
    }
    
    // Begin emitting instructions.
    func begin() {
        isAssembling = true
        programCounter = 1
        codeGenerator.begin()
    }
    
    // End emitting instructions.
    // After this call, the client can copy instructions out of "instructions".
    func end() throws {
        for i in 0..<commands.count {
            try commands[i]()
        }
        codeGenerator.end()
        instructions = codeGenerator.instructions
        isAssembling = false
    }
    
    // No Operation -- Do nothing
    func nop() {
        assert(isAssembling)
        commands.append({
            self.codeGenerator.nop()
        })
        programCounter += 1
    }
    
    // Halt -- Halt the computer until reset
    func hlt() {
        assert(isAssembling)
        commands.append({
            self.codeGenerator.hlt()
        })
        programCounter += 1
    }
    
    // Move -- Copy a value from one bus device to another.
    func mov(_ destination: String, _ source: String) throws {
        assert(isAssembling)
        commands.append({
            try self.codeGenerator.mov(destination, source)
        })
        programCounter += 1
    }
    
    // Load Immediate -- Loads an immediate value to the specified destination
    func li(_ destination: String, _ immediate: Int) throws {
        assert(isAssembling)
        commands.append({
            try self.codeGenerator.li(destination, immediate)
        })
        programCounter += 1
    }
    
    // Addition -- The ALU adds the contents of the A and B registers and moves
    // the result to the specified destination bus device.
    func add(_ destination: String) throws {
        assert(isAssembling)
        commands.append({
            try self.codeGenerator.add(destination)
        })
        programCounter += 1
    }
    
    func label(_ name: String) throws {
        assert(isAssembling)
        if symbols[name] == nil {
            symbols[name] = self.programCounter
        } else {
            throw AssemblerBackEndError(format: "Duplicate label \"%@\"", name)
        }
    }
    
    // Jump -- Jump to the specified label.
    func jmp(_ name: String) throws {
        assert(isAssembling)
        commands.append({
            let address = try self.resolveSymbol(name)
            try self.codeGenerator.li("X", (address & 0xff00) >> 8)
            try self.codeGenerator.li("Y", (address & 0xff))
            self.codeGenerator.jmp()
            self.codeGenerator.nop()
            self.codeGenerator.nop()
        })
        programCounter += 5
    }
    
    func resolveSymbol(_ name: String) throws -> Int {
        if let value = self.symbols[name] {
            return value
        } else {
            throw AssemblerBackEndError(format: "Unrecognized symbol name \"%@\"", name)
        }
    }
}
