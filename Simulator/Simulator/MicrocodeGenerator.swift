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
        mov()
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
    
    func mov() {
        let outputToBus = [("A", {(_ controlWord: ControlWord) in controlWord.outputAToBus()}),
                           ("B", {(_ controlWord: ControlWord) in controlWord.outputBToBus()}),
                           ("C", {(_ controlWord: ControlWord) in controlWord.outputCToBus()}),
                           ("X", {(_ controlWord: ControlWord) in controlWord.outputXToBus()}),
                           ("Y", {(_ controlWord: ControlWord) in controlWord.outputYToBus()}),
                           ("E", {(_ controlWord: ControlWord) in controlWord.outputEToBus()}),
                           ("M", {(_ controlWord: ControlWord) in controlWord.outputMToBus()})]
        
        let inputFromBus = [("A", {(_ controlWord: ControlWord) in controlWord.inputAFromBus()}),
                            ("B", {(_ controlWord: ControlWord) in controlWord.inputBFromBus()}),
                            ("D", {(_ controlWord: ControlWord) in controlWord.inputDFromBus()}),
                            ("X", {(_ controlWord: ControlWord) in controlWord.inputXFromBus()}),
                            ("Y", {(_ controlWord: ControlWord) in controlWord.inputYFromBus()}),
                            ("M", {(_ controlWord: ControlWord) in controlWord.inputMFromBus()})]
        
        for output in outputToBus {
            for input in inputFromBus {
                let controlWord = ControlWord()
                input.1(controlWord)
                output.1(controlWord)
                let mnemonic = String(format: "MOV %@, %@", input.0, output.0)
                let opcode = getNextOpcode()
                mapMnemonicToOpcode[mnemonic] = opcode
                microcode.store(opcode: opcode, controlWord: controlWord)
            }
        }
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
