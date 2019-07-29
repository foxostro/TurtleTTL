//
//  PipelineStageExecute.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class PipelineStageExecute: NSObject {
    let controlWordRegister:ControlWord
    let registerA:Register
    let registerB:Register
    let registerC:Register
    let registerD:Register
    let registerX:Register
    let registerY:Register
    let flags:Flags
    let dataRAM:RAM
    let programCounter:ProgramCounter
    let alu:ALU
    var bus:UInt8 = 0
    var isResetting = false
    var logger:Logger?
    
    init(controlWordRegister:ControlWord,
         registerA:Register,
         registerB:Register,
         registerC:Register,
         registerD:Register,
         registerX:Register,
         registerY:Register,
         flags:Flags,
         dataRAM:RAM,
         programCounter:ProgramCounter,
         alu:ALU) {
        self.controlWordRegister = controlWordRegister
        self.registerA = registerA
        self.registerB = registerB
        self.registerC = registerC
        self.registerD = registerD
        self.registerX = registerX
        self.registerY = registerY
        self.flags = flags
        self.dataRAM = dataRAM
        self.programCounter = programCounter
        self.alu = alu
    }
    
    func execute(withControlTuple controlTuple:ControlTuple) {
        controlWordRegister.contents = controlTuple.controlWord.contents
        registerC.contents = controlTuple.immediate
        bus = 0
        updateALU()
        processControlSignals()
    }
    
    func updateALU() {
        alu.s = registerC.contents & 0b1111
        alu.carryIn = Int(registerC.contents & 0b10000) >> 4
        alu.mode = Int(registerC.contents & 0b100000) >> 5
        alu.a = registerA.contents
        alu.b = registerB.contents
        alu.update()
    }
    
    func processControlSignals() {
        if (false == controlWordRegister.CO) {
            bus = registerC.contents
            if (!isResetting) {
                logger?.log("CO -- output %d onto bus", bus)
            }
        }
        if (false == controlWordRegister.YO) {
            bus = registerY.contents
            if (!isResetting) {
                logger?.log("YO -- output %d onto bus", bus)
            }
        }
        if (false == controlWordRegister.XO) {
            bus = registerX.contents
            if (!isResetting) {
                logger?.log("XO -- output %d onto bus", bus)
            }
        }
        if (false == controlWordRegister.MO) {
            bus = dataRAM.contents[valueOfXYPair()]
            if (!isResetting) {
                logger?.log("MO -- output %d onto bus", bus)
            }
        }
        if (false == controlWordRegister.EO) {
            bus = alu.result
            if (!isResetting) {
                logger?.log("EO -- output %d onto bus", bus)
            }
        }
        if (false == controlWordRegister.FI) {
            let oldFlags = Flags()
            oldFlags.carryFlag = flags.carryFlag
            oldFlags.equalFlag = flags.equalFlag
            
            flags.carryFlag = alu.carryFlag
            flags.equalFlag = alu.equalFlag
            
            if (!isResetting) {
                logger?.log("FI -- flags changing from %@ to %@", oldFlags, flags)
            }
        }
        if (false == controlWordRegister.AO) {
            bus = registerA.contents
            if (!isResetting) {
                logger?.log("AO -- output %d onto bus", bus)
            }
        }
        if (false == controlWordRegister.BO) {
            bus = registerB.contents
            if (!isResetting) {
                logger?.log("BO -- output %d onto bus", bus)
            }
        }
        
        if (false == controlWordRegister.YI) {
            if (!isResetting) {
                logger?.log("YI -- input %d from bus", bus)
            }
            registerY.contents = bus
        }
        if (false == controlWordRegister.XI) {
            if (!isResetting) {
                logger?.log("XI -- input %d from bus", bus)
            }
            registerX.contents = bus
        }
        if (false == controlWordRegister.AI) {
            if (!isResetting) {
                logger?.log("AI -- input %d from bus", bus)
            }
            registerA.contents = bus
        }
        if (false == controlWordRegister.BI) {
            if (!isResetting) {
                logger?.log("BI -- input %d from bus", bus)
            }
            registerB.contents = bus
        }
        if (false == controlWordRegister.DI) {
            if (!isResetting) {
                logger?.log("DI -- input %d from bus", bus)
            }
            registerD.contents = bus
        }
        if (false == controlWordRegister.MI) {
            if (!isResetting) {
                logger?.log("MI -- input %d from bus", bus)
            }
            dataRAM.contents[valueOfXYPair()] = bus
        }
        if (false == controlWordRegister.J) {
            if (!isResetting) {
                logger?.log("J -- jump to %d", UInt16(valueOfXYPair()))
            }
            programCounter.contents = UInt16(valueOfXYPair())
        }
        if (true == controlWordRegister.HLT) {
            logger?.log("HLT")
        }
        if (!isResetting) {
            logger?.log("-----")
        }
    }
    
    fileprivate func valueOfXYPair() -> Int {
        return Int(registerX.contents<<8 | registerY.contents)
    }
}
