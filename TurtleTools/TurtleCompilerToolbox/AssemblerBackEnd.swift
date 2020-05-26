//
//  AssemblerBackEnd.swift
//  TurtleCompilerToolbox
//
//  Created by Andrew Fox on 7/30/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import TurtleCore

// Generates machine code for use in the IF stage of TurtleTTL hardware.
public class AssemblerBackEnd: NSObject {
    public let microcodeGenerator: MicrocodeGenerator
    public var instructions = [Instruction]()
    var isAssembling: Bool = false
    public var programCounter: Int {
        return instructions.count
    }
    
    public init(microcodeGenerator: MicrocodeGenerator) {
        self.microcodeGenerator = microcodeGenerator
        super.init()
    }
    
    // Begin emitting instructions.
    public func begin() {
        isAssembling = true
        instructions = []
    }
    
    // End emitting instructions.
    // After this call, the client can copy instructions out of "instructions".
    public func end() {
        isAssembling = false
    }
    
    // Produce a generic instruction with the specified immediate value.
    public func instruction(mnemonic:String, immediate: Int) throws {
        assert(isAssembling)
        if immediate < 0 || immediate > 255 {
            throw CompilerError(format: "immediate value is not between 0 and 255: `%d'", immediate)
        }
        let maybeOpcode = microcodeGenerator.getOpcode(mnemonic: mnemonic)
        if let opcode = maybeOpcode {
            let inst = Instruction(opcode: UInt8(opcode), immediate: UInt8(immediate))
            instructions.append(inst)
        } else {
            throw CompilerError(format: "unrecognized mnemonic: `%@'", mnemonic)
        }
    }
    
    // Produce a generic instruction with the specified immediate value.
    public func instruction(mnemonic:String, token immediateToken: TokenNumber) throws {
        assert(isAssembling)
        let immediate = immediateToken.literal
        if immediate < 0 || immediate > 255 {
            throw CompilerError(line: immediateToken.lineNumber, format: "immediate value is not between 0 and 255: `%d'", immediate)
        }
        let maybeOpcode = microcodeGenerator.getOpcode(mnemonic: mnemonic)
        if let opcode = maybeOpcode {
            let inst = Instruction(opcode: UInt8(opcode), immediate: UInt8(immediate))
            instructions.append(inst)
        } else {
            throw CompilerError(line: immediateToken.lineNumber, format: "unrecognized mnemonic: `%@'", mnemonic)
        }
    }
    
    // No Operation -- Do nothing
    public func nop() {
        assert(isAssembling)
        try! instruction(mnemonic: "NOP", immediate: 0)
    }
    
    // Halt -- Halt the computer until reset
    public func hlt() {
        assert(isAssembling)
        try! instruction(mnemonic: "HLT", immediate: 0)
    }
    
    // INUV -- Increment the UV register pair
    public func inuv() {
        assert(isAssembling)
        try! instruction(mnemonic: "INUV", immediate: 0)
    }
    
    // INXY -- Increment the XY register pair
    public func inxy() {
        assert(isAssembling)
        try! instruction(mnemonic: "INXY", immediate: 0)
    }
    
    // Move -- Copy a value from one bus device to another.
    public func mov(_ destination: RegisterName, _ source: RegisterName, _ immediate: Int) throws {
        assert(isAssembling)
        let mnemonic = "MOV \(String(describing: destination)), \(String(describing: source))"
        try instruction(mnemonic: mnemonic, immediate: immediate)
    }
    
    // Move -- Copy a value from one bus device to another.
    public func mov(_ destination: RegisterName, _ source: RegisterName, token immediate: TokenNumber) throws {
        assert(isAssembling)
        let mnemonic = "MOV \(String(describing: destination)), \(String(describing: source))"
        try instruction(mnemonic: mnemonic, token: immediate)
    }
    
    // Move -- Copy a value from one bus device to another.
    public func mov(_ destination: RegisterName, _ source: RegisterName) throws {
        assert(isAssembling)
        let mnemonic = "MOV \(String(describing: destination)), \(String(describing: source))"
        try instruction(mnemonic: mnemonic, immediate: 0)
    }
    
    // Load Immediate -- Loads an immediate value to the specified destination
    public func li(_ destination: RegisterName, _ immediate: Int) throws {
        assert(isAssembling)
        try mov(destination, .C, immediate)
    }
    
    // Load Immediate -- Loads an immediate value to the specified destination
    public func li(_ destination: RegisterName, token immediate: TokenNumber) throws {
        assert(isAssembling)
        try mov(destination, .C, token: immediate)
    }
    
    // Addition -- The ALU adds the contents of the A and B registers and moves
    // the result to the specified destination bus device.
    public func add(_ destination: RegisterName) throws {
        assert(isAssembling)
        let mnemonic: String
        if destination == .NONE {
            mnemonic = "ALUwoC"
        } else {
            mnemonic = "ALUwoC \(String(describing: destination))"
        }
        try instruction(mnemonic: mnemonic, immediate: 0b1001)
    }
    
    // Subtraction -- The ALU subtracts B from A and moves the result to the
    // specified destination bus device.
    public func sub(_ destination: RegisterName) throws {
        assert(isAssembling)
        let mnemonic: String
        if destination == .NONE {
            mnemonic = "ALUwC"
        } else {
            mnemonic = "ALUwC \(String(describing: destination))"
        }
        try instruction(mnemonic: mnemonic, immediate: 0b0110)
    }
    
    // Addition -- Result <-- A + B + Cf
    public func adc(_ destination: RegisterName) throws {
        assert(isAssembling)
        let mnemonic: String
        if destination == .NONE {
            mnemonic = "ALUxC"
        } else {
            mnemonic = "ALUxC \(String(describing: destination))"
        }
        try instruction(mnemonic: mnemonic, immediate: 0b1001)
    }
    
    // Subtraction -- Result <-- A - B - Cf
    public func sbc(_ destination: RegisterName) throws {
        assert(isAssembling)
        let mnemonic: String
        if destination == .NONE {
            mnemonic = "ALUxC"
        } else {
            mnemonic = "ALUxC \(String(describing: destination))"
        }
        try instruction(mnemonic: mnemonic, immediate: 0b0110)
    }
    
    // Decrement A -- The ALU computes A-1 and outputs the result to the bus.
    public func dea(_ destination: RegisterName) throws {
        assert(isAssembling)
        let mnemonic: String
        if destination == .NONE {
            mnemonic = "ALUwoC"
        } else {
            mnemonic = "ALUwoC \(String(describing: destination))"
        }
        try instruction(mnemonic: mnemonic, immediate: 0b1111)
    }
    
    // Decrement A -- Compute A-1 if the carry flag is set.
    public func dca(_ destination: RegisterName) throws {
        assert(isAssembling)
        let mnemonic: String
        if destination == .NONE {
            mnemonic = "CALUwoC"
        } else {
            mnemonic = "CALUwoC \(String(describing: destination))"
        }
        try instruction(mnemonic: mnemonic, immediate: 0b1111)
    }
    
    // Compare -- The ALU compares the contents of the A and B registers.
    //            Flags are updated but the ALU result is not stored.
    public func cmp() {
        assert(isAssembling)
        try! instruction(mnemonic: "ALUwoC", immediate: 0b0110)
    }
    
    // Link -- Save the contents of PC to the Link register
    public func link() {
        assert(isAssembling)
        try! instruction(mnemonic: "LINK", immediate: 0)
    }
    
    // Jump -- Jump to the address specified by the XY register pair, and load the link register
    public func jalr() {
        assert(isAssembling)
        try! instruction(mnemonic: "JALR", immediate: 0)
    }
    
    // Jump -- Jump to the address specified by the XY register pair.
    public func jmp() {
        assert(isAssembling)
        try! instruction(mnemonic: "JMP", immediate: 0)
    }
    
    // Jump on Carry -- If the carry flag is set then jump to the address
    // specified by the XY register pair. Otherwise, do nothing.
    public func jc() {
        assert(isAssembling)
        try! instruction(mnemonic: "JC", immediate: 0)
    }
    
    public func jnc() {
        assert(isAssembling)
        try! instruction(mnemonic: "JNC", immediate: 0)
    }
    
    public func je() {
        assert(isAssembling)
        try! instruction(mnemonic: "JE", immediate: 0)
    }
    
    public func jne() {
        assert(isAssembling)
        try! instruction(mnemonic: "JNE", immediate: 0)
    }
    
    public func jg() {
        assert(isAssembling)
        try! instruction(mnemonic: "JG", immediate: 0)
    }
    
    public func jle() {
        assert(isAssembling)
        try! instruction(mnemonic: "JLE", immediate: 0)
    }
    
    public func jl() {
        assert(isAssembling)
        try! instruction(mnemonic: "JL", immediate: 0)
    }
    
    public func jge() {
        assert(isAssembling)
        try! instruction(mnemonic: "JGE", immediate: 0)
    }
    
    // Bit Blit -- Copy a value from a peripheral to data RAM (or vice versa)
    // and increment the address registers for both the source and destination.
    public func blt(_ destination: RegisterName, _ source: RegisterName) throws {
        assert(isAssembling)
        let mnemonic = "BLT \(String(describing: destination)), \(String(describing: source))"
        try instruction(mnemonic: mnemonic, immediate: 0)
    }
}
