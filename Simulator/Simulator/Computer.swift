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
    let flags = Flags()
    let dataRAM = RAM()
    let programCounter = ProgramCounter()
    let alu = ALU()
    let instructionROM = InstructionROM()
    let instructionDecoder = InstructionDecoder()
    let controlWordRegister = ControlWord()
    let pipelineStageFetch:PipelineFetchStage
    let pipelineStageDecode:PipelineStageDecode
    let pipelineStageExecute:PipelineStageExecute
    var logger:Logger? {
        didSet {
            pipelineStageFetch.logger = logger
            pipelineStageDecode.logger = logger
            pipelineStageExecute.logger = logger
        }
    }
    let lowerDecoderRomFilename = "Lower Decoder ROM.bin"
    let upperDecoderRomFilename = "Upper Decoder ROM.bin"
    let lowerInstructionROMFilename = "Lower Instruction ROM.bin"
    let upperInstructionROMFilename = "Upper Instruction ROM.bin"
    
    override init() {
        pipelineStageFetch = PipelineFetchStage(withProgramCounter: programCounter,
                                                withInstructionROM: instructionROM)
        pipelineStageDecode = PipelineStageDecode(withDecoder: instructionDecoder,
                                                  flags: flags)
        pipelineStageExecute = PipelineStageExecute(controlWordRegister: controlWordRegister,
                                                    registerA: registerA,
                                                    registerB: registerB,
                                                    registerC: registerC,
                                                    registerD: registerD,
                                                    registerX: registerX,
                                                    registerY: registerY,
                                                    flags: flags,
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
    
    func provideInstructions(_ instructions: [Instruction]) {
        instructionROM.store(instructions)
    }
    
    var busStringValue:String {
        return String(pipelineStageExecute.bus, radix: 16)
    }
    
    func saveMicrocode(to: URL) throws {
        // Use minipro on the command-line to flash the binary file to EEPROM:
        //   % minipro -p SST29EE010 -y -w ./file.bin
        let lowerDecoderROM = instructionDecoder.lowerROM.data
        let upperDecoderROM = instructionDecoder.upperROM.data
        
        try FileManager.default.createDirectory(at: to,
                                                withIntermediateDirectories: false,
                                                attributes: [:])
        try lowerDecoderROM.write(to: to.appendingPathComponent(lowerDecoderRomFilename))
        try upperDecoderROM.write(to: to.appendingPathComponent(upperDecoderRomFilename))
    }
    
    func loadMicrocode(from: URL) throws {
        try instructionDecoder.lowerROM.data = Data(contentsOf: from.appendingPathComponent(lowerDecoderRomFilename) as URL)
        try instructionDecoder.upperROM.data = Data(contentsOf: from.appendingPathComponent(upperDecoderRomFilename) as URL)
    }
    
    func saveProgram(to: URL) throws {
        // Use minipro on the command-line to flash the binary file to EEPROM:
        //   % minipro -p SST29EE010 -y -w ./file.bin
        let lowerInstructionROM = instructionROM.lowerROM.data
        let upperInstructionROM = instructionROM.upperROM.data
        
        try FileManager.default.createDirectory(at: to,
                                                withIntermediateDirectories: false,
                                                attributes: [:])
        try lowerInstructionROM.write(to: to.appendingPathComponent(lowerInstructionROMFilename))
        try upperInstructionROM.write(to: to.appendingPathComponent(upperInstructionROMFilename))
    }
    
    func loadProgram(from: URL) throws {
        try instructionROM.lowerROM.data = Data(contentsOf: from.appendingPathComponent(lowerInstructionROMFilename) as URL)
        try instructionROM.upperROM.data = Data(contentsOf: from.appendingPathComponent(upperInstructionROMFilename) as URL)
    }
    
    func provideMicrocode(microcode: InstructionDecoder) {
        instructionDecoder.lowerROM.data = microcode.lowerROM.data
        instructionDecoder.upperROM.data = microcode.upperROM.data
    }
}
