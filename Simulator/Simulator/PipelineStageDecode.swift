//
//  PipelineStageDecode.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class PipelineStageDecode: NSObject {
    let instructionDecoder:InstructionDecoder
    private var temp = ControlTuple()
    
    init(withDecoder instructionDecoder:InstructionDecoder) {
        self.instructionDecoder = instructionDecoder
    }
    
    func decode(withInstruction instruction:Instruction) -> ControlTuple {
        let oldTemp = temp
        temp = ControlTuple()
        temp.controlWord.contents = instructionDecoder.load(opcode: Int(instruction.opcode))
        temp.immediate = instruction.immediate
        
        NSLog("Decoded instruction %@ to control word %@",
              instruction, temp.controlWord)
        
        return oldTemp
    }
}
