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
    var isResetting = false
    
    init(withProgramCounter programCounter:ProgramCounter, withInstructionROM instructionROM:InstructionROM) {
        self.programCounter = programCounter
        self.instructionROM = instructionROM
    }
    
    func fetch() -> Instruction {
        let oldInstruction = instructionRegister
        let pc = programCounter.contents
        let newInstruction = instructionROM.load(address: Int(pc))
        if (!isResetting) {
            NSLog("Fetched new instruction from memory: %@", newInstruction)
        }
        
        instructionRegister = newInstruction
        programCounter.increment()
        
        return oldInstruction;
    }
}
