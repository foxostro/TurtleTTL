//
//  Computer.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class Computer: NSObject {
    let registerA = Register()
    let registerB = Register()
    let registerC = Register()
    let registerD = Register()
    let registerX = Register()
    let registerY = Register()
    let registerFlags = Register()
    let dataRAM = RAM()
    let programCounter = ProgramCounter()
    let alu = ALU()
    let instructionROM = InstructionROM()
    let instructionDecoder = InstructionDecoder()
    let controlWordRegister = ControlWord()
    let pipelineStageFetch:PipelineFetchStage
    let pipelineStageDecode:PipelineStageDecode
    let pipelineStageExecute:PipelineStageExecute
    
    override init() {
        pipelineStageFetch = PipelineFetchStage(withProgramCounter: programCounter,
                                                withInstructionROM: instructionROM)
        pipelineStageDecode = PipelineStageDecode(withDecoder: instructionDecoder)
        pipelineStageExecute = PipelineStageExecute(controlWordRegister: controlWordRegister,
                                                    registerA: registerA,
                                                    registerB: registerB,
                                                    registerC: registerC,
                                                    registerD: registerD,
                                                    registerX: registerX,
                                                    registerY: registerY,
                                                    registerFlags: registerFlags,
                                                    dataRAM: dataRAM,
                                                    programCounter: programCounter,
                                                    alu: alu)
    }
    
    func reset() {
        pipelineStageFetch.isResetting = true
        pipelineStageDecode.isResetting = true
        pipelineStageExecute.isResetting = true
        for _ in 1...3 {
            programCounter.contents = 0
            haltlessStep()
        }
        programCounter.contents = 0
        pipelineStageFetch.isResetting = false
        pipelineStageDecode.isResetting = false
        pipelineStageExecute.isResetting = false
    }
    
    func step() {
        if (false == controlWordRegister.HLT) {
            haltlessStep()
        }
    }
    
    func haltlessStep() {
        let instruction = pipelineStageFetch.fetch()
        let controlTuple = pipelineStageDecode.decode(withInstruction: instruction)
        pipelineStageExecute.execute(withControlTuple: controlTuple)
    }
    
    func execute() {
        reset()
        while (false == controlWordRegister.HLT) {
            haltlessStep()
        }
    }
}
