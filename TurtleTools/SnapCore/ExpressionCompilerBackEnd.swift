//
//  ExpressionCompilerBackEnd.swift
//  SnapCore
//
//  Created by Andrew Fox on 5/22/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import TurtleCompilerToolbox

// Takes some StackIR and generates corresponding machine code.
// For speed, we use the A and B registers as the top of the stack.
// (see also ExpressionCompilerFrontEnd)
public class ExpressionCompilerBackEnd: NSObject {
    let kScratchHi = 0
    let kScratchLo = 2
    let kStackPointerHiHi = Int((SnapCodeGenerator.kStackPointerAddressHi & 0xff00) >> 8)
    let kStackPointerHiLo = Int( SnapCodeGenerator.kStackPointerAddressHi & 0x00ff)
    let kStackPointerLoHi = Int((SnapCodeGenerator.kStackPointerAddressLo & 0xff00) >> 8)
    let kStackPointerLoLo = Int( SnapCodeGenerator.kStackPointerAddressLo & 0x00ff)
    let assembler: AssemblerBackEnd
    var stackDepth = 0
    
    public init(assembler: AssemblerBackEnd) {
        self.assembler = assembler
    }
    
    public func compile(ir: [StackIR]) throws {
        for instruction in ir {
            switch instruction {
            case .push(let value): try push(value)
            case .pop: try pop()
            case .add: try add()
            case .sub: try sub()
            case .mul: try mul()
            default:
                throw CompilerError(message: "ExpressionCompilerBackEnd: unsupported instruction `\(instruction)\'")
            }
        }
    }
    
    fileprivate func push(_ value: Int) throws {
        if stackDepth == 0 {
            try assembler.li(.A, value)
        } else if stackDepth == 1 {
            try assembler.mov(.B, .A)
            try assembler.li(.A, value)
        } else {
            try pushToStackInMemory(value)
        }
        stackDepth += 1
    }
    
    fileprivate func pushToStackInMemory(_ value: Int) throws {
        try decrementStackPointer()
        
        // Load the 16-bit stack pointer into UV.
        try assembler.li(.U, kStackPointerHiHi)
        try assembler.li(.V, kStackPointerHiLo)
        try assembler.mov(.X, .M)
        try assembler.li(.U, kStackPointerLoHi)
        try assembler.li(.V, kStackPointerLoLo)
        try assembler.mov(.Y, .M)
        try assembler.mov(.U, .X)
        try assembler.mov(.V, .Y)
        
        // Store B to the top of the in-memory stack.
        try assembler.mov(.M, .B)
        
        // Move A into B
        try assembler.mov(.B, .A)
        
        // Finally, move the new value to push into A.
        try assembler.li(.A, value)
    }
    
    fileprivate func decrementStackPointer() throws {
        // Save A in a well-known scratch location.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo)
        try assembler.mov(.M, .A)
        
        // Decrement the low byte of the 16-bit stack pointer.
        try assembler.li(.U, kStackPointerLoHi)
        try assembler.li(.V, kStackPointerLoLo)
        try assembler.mov(.A, .M)
        try assembler.dea(.NONE)
        try assembler.dea(.A)
        try assembler.mov(.M, .A)
        
        // Decrement the high byte of the 16-bit stack pointer, but only if the
        // above decrement set the carry flag.
        try assembler.li(.U, kStackPointerHiHi)
        try assembler.li(.V, kStackPointerHiLo)
        try assembler.mov(.A, .M)
        try assembler.dca(.NONE)
        try assembler.dca(.A)
        try assembler.mov(.M, .A)
        
        // Restore A
        // (We saved this to a well-known scratch location earlier.)
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo)
        try assembler.mov(.A, .M)
    }
    
    fileprivate func pop() throws {
        if stackDepth == 0 {
            throw CompilerError(message: "ExpressionCompilerBackEnd: cannot pop when stack is empty")
        } else if stackDepth == 1 {
            try assembler.li(.A, 0) // Clear A. This is not actually necessary.
        } else if stackDepth == 2 {
            try assembler.mov(.A, .B)
            try assembler.li(.B, 0) // Clear B. This is not actually necessary.
        } else {
            try assembler.mov(.A, .B)
            try popInMemoryStackIntoRegisterB()
        }
        
        stackDepth -= 1
    }
    
    fileprivate func popInMemoryStackIntoRegisterB() throws {
        // Load the 16-bit stack pointer into XY.
        try assembler.li(.U, kStackPointerHiHi)
        try assembler.li(.V, kStackPointerHiLo)
        try assembler.mov(.X, .M)
        try assembler.li(.U, kStackPointerLoHi)
        try assembler.li(.V, kStackPointerLoLo)
        try assembler.mov(.Y, .M)
        
        // Shift the top of the in-memory stack into B.
        try assembler.mov(.U, .X)
        try assembler.mov(.V, .Y)
        try assembler.mov(.B, .M)
        
        // Increment the stack pointer.
        assembler.inxy()
        
        // Write the modified stack pointer back to memory.
        try assembler.li(.U, kStackPointerHiHi)
        try assembler.li(.V, kStackPointerHiLo)
        try assembler.mov(.M, .X)
        try assembler.li(.U, kStackPointerLoHi)
        try assembler.li(.V, kStackPointerLoLo)
        try assembler.mov(.M, .Y)
    }
    
    fileprivate func add() throws {
        guard stackDepth >= 2 else {
            throw CompilerError(message: "ExpressionCompilerBackEnd: stack underflow during ADD")
        }
        try assembler.add(.NONE)
        try assembler.add(.A)
        if stackDepth > 2 {
            try popInMemoryStackIntoRegisterB()
        }
        stackDepth -= 1
    }
    
    fileprivate func sub() throws {
        guard stackDepth >= 2 else {
            throw CompilerError(message: "ExpressionCompilerBackEnd: stack underflow during SUB")
        }
        try assembler.sub(.NONE)
        try assembler.sub(.A)
        if stackDepth > 2 {
            try popInMemoryStackIntoRegisterB()
        }
        stackDepth -= 1
    }
    
    fileprivate func mul() throws {
        guard stackDepth >= 2 else {
            throw CompilerError(message: "ExpressionCompilerBackEnd: stack underflow during MUL")
        }
        
        // A is the Multiplicand, B is the Multiplier
        let multiplierAddress = kScratchLo
        let multiplicandAddress = kScratchLo+1
        let resultAddress = kScratchLo+2
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, multiplierAddress)
        try assembler.mov(.M, .B)
        try assembler.li(.V, multiplicandAddress)
        try assembler.mov(.M, .A)
        try assembler.li(.V, resultAddress)
        try assembler.li(.M, 0)
        
        let loopHead = assembler.programCounter
        let loopTail = loopHead + 27
        
        // If the multiplier is equal to zero then bail because we're done.
        try assembler.li(.X, (loopTail & 0xff00) >> 8)
        try assembler.li(.Y,  loopTail & 0x00ff)
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, multiplierAddress)
        try assembler.mov(.A, .M)
        try assembler.li(.B, 0)
        assembler.cmp()
        assembler.cmp()
        assembler.nop()
        assembler.je()
        assembler.nop()
        assembler.nop()
        
        // Add the multiplicand to the result.
        try assembler.li(.V, multiplicandAddress)
        try assembler.mov(.B, .M)
        try assembler.li(.V, resultAddress)
        try assembler.mov(.A, .M)
        try assembler.add(.NONE)
        try assembler.add(.M)
        
        // Decrement the multiplier.
        try assembler.li(.V, multiplierAddress)
        try assembler.mov(.A, .M)
        try assembler.dea(.NONE)
        try assembler.dea(.M)

        // Jump back to the beginning of the loop
        try assembler.li(.X, (loopHead & 0xff00) >> 8)
        try assembler.li(.Y,  loopHead & 0x00ff)
        assembler.jmp()
        assembler.nop()
        assembler.nop()
        assert(assembler.programCounter == loopTail)
        
        // Load the result into A.
        try assembler.li(.V, resultAddress)
        try assembler.mov(.A, .M)
        
        if stackDepth > 2 {
            try popInMemoryStackIntoRegisterB()
        }
        stackDepth -= 1
    }
}
