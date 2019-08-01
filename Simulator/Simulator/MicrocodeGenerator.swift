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
    
    // Registers which can take in a value from the bus.
    enum SourceRegister : CaseIterable {
        case A, B, C, X, Y, E, M
    }
    
    func modifyControlWord(controlWord: ControlWord, toOutputToBus: SourceRegister) {
        switch toOutputToBus {
        case .A:
            controlWord.outputAToBus()
        case .B:
            controlWord.outputBToBus()
        case .C:
            controlWord.outputCToBus()
        case .X:
            controlWord.outputXToBus()
        case .Y:
            controlWord.outputYToBus()
        case .E:
            controlWord.outputEToBus()
        case .M:
            controlWord.outputMToBus()
        }
    }
    
    // Registers which can output a value to the bus.
    enum DestinationRegister : CaseIterable {
        case A, B, D, X, Y, M
    }
    
    func modifyControlWord(controlWord: ControlWord, toInputFromBus: DestinationRegister) {
        switch toInputFromBus {
        case .A:
            controlWord.inputAFromBus()
        case .B:
            controlWord.inputBFromBus()
        case .D:
            controlWord.inputDFromBus()
        case .X:
            controlWord.inputXFromBus()
        case .Y:
            controlWord.inputYFromBus()
        case .M:
            controlWord.inputMFromBus()
        }
    }
    
    func generate() {
        nop()
        hlt()
        mov()
        alu()
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
        for source in SourceRegister.allCases {
            for destination in DestinationRegister.allCases {
                let controlWord = ControlWord()
                modifyControlWord(controlWord: controlWord, toOutputToBus: source)
                modifyControlWord(controlWord: controlWord, toInputFromBus: destination)
                let mnemonic = String(format: "MOV %@, %@",
                                      String(describing: destination),
                                      String(describing: source))
                let opcode = getNextOpcode()
                mapMnemonicToOpcode[mnemonic] = opcode
                microcode.store(opcode: opcode, controlWord: controlWord)
            }
        }
    }
    
    func alu() {
        for destination in DestinationRegister.allCases {
            let controlWord = ControlWord()
            modifyControlWord(controlWord: controlWord, toOutputToBus: .E)
            modifyControlWord(controlWord: controlWord, toInputFromBus: destination)
            controlWord.FI = false
            let mnemonic = String(format: "ALU %@", String(describing: destination))
            let opcode = getNextOpcode()
            mapMnemonicToOpcode[mnemonic] = opcode
            microcode.store(opcode: opcode, controlWord: controlWord)
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
