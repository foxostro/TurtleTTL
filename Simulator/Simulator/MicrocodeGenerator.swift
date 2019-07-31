//
//  MicrocodeGenerator.swift
//  Simulator
//
//  Created by Andrew Fox on 7/30/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class MicrocodeGenerator: NSObject {
    let microcode = InstructionDecoder()
    var mapMnemonicToOpcode = [String:Int]()
    var nextOpcode = 0
    
    func generate() {
        nop()
        hlt()
    }
    
    func nop() {
        let opcode = getNextOpcode()
        mapMnemonicToOpcode["NOP"] = opcode
        microcode.store(opcode: opcode, controlWord: ControlWord())
    }
    
    func hlt() {
        let opcode = getNextOpcode()
        mapMnemonicToOpcode["HLT"] = opcode
        let controlWord = ControlWord()
        controlWord.HLT = true
        microcode.store(opcode: opcode, controlWord: controlWord)
    }
    
    func getNextOpcode() -> Int {
        let opcode = nextOpcode
        nextOpcode += 1
        return opcode
    }
    
    func getOpcode(withMnemonic mnemonic: String) -> Int? {
        return mapMnemonicToOpcode[mnemonic]
    }
}
