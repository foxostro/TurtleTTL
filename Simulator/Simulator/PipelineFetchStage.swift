//
//  PipelineFetchStage.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class PipelineFetchStage: NSObject {
    var programCounter:ProgramCounter
    var instructionROM:InstructionROM
    var instructionRegister = Instruction()
    
    init(withProgramCounter programCounter:ProgramCounter, withInstructionROM instructionROM:InstructionROM) {
        self.programCounter = programCounter
        self.instructionROM = instructionROM
    }
    
    func fetch() -> Instruction {
        let oldInstruction = instructionRegister
        let pc = programCounter.contents
        let newInstructionValue = instructionROM.load(address: pc)
        let newInstruction = Instruction()
        newInstruction.opcode = UInt8(newInstructionValue >> 8 & 0xff)
        newInstruction.immediate = UInt8(newInstructionValue & 0xff)
        NSLog("Fetched new instruction from memory: opcode=0b%@, immediate=%d",
              String(newInstruction.opcode, radix: 2),
              newInstruction.immediate)
        
        instructionRegister = newInstruction
        programCounter.increment()
        
        return oldInstruction;
    }
}
