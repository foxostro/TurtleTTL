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
        temp.controlWord.contents = instructionDecoder.contents[Int(instruction.opcode)]
        temp.immediate = instruction.immediate
        
        NSLog("Decoded instruction with opcode=%d;immediate=%d to control word 0b%@",
              instruction.opcode, instruction.immediate,
              String(temp.controlWord.contents, radix: 2))
        
        return oldTemp
    }
}
