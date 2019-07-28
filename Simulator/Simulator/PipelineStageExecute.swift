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
    let registerFlags:Register
    let dataRAM:RAM
    let programCounter:ProgramCounter
    let alu:ALU
    var bus:UInt8 = 0
    var isResetting = false
    
    init(controlWordRegister:ControlWord,
         registerA:Register,
         registerB:Register,
         registerC:Register,
         registerD:Register,
         registerX:Register,
         registerY:Register,
         registerFlags:Register,
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
        self.registerFlags = registerFlags
        self.dataRAM = dataRAM
        self.programCounter = programCounter
        self.alu = alu
    }
    
    func execute(withControlTuple controlTuple:ControlTuple) {
        controlWordRegister.contents = controlTuple.controlWord.contents
        registerC.contents = controlTuple.immediate
        bus = 0
        processControlSignals()
    }
    
    func processControlSignals() {
        if (!isResetting) {
            NSLog("executing:");
        }
        if (false == controlWordRegister.CO) {
            bus = registerC.contents
            if (!isResetting) {
                NSLog("CO -- output %d onto bus", bus)
            }
        }
        if (false == controlWordRegister.YO) {
            bus = registerY.contents
            if (!isResetting) {
                NSLog("YO -- output %d onto bus", bus)
            }
        }
        if (false == controlWordRegister.XO) {
            bus = registerX.contents
            if (!isResetting) {
                NSLog("XO -- output %d onto bus", bus)
            }
        }
        if (false == controlWordRegister.MO) {
            bus = dataRAM.contents[valueOfXYPair()]
            if (!isResetting) {
                NSLog("MO -- output %d onto bus", bus)
            }
        }
        if (false == controlWordRegister.EO) {
            alu.s = registerC.contents & 0b1111
            alu.carryIn = Int(registerC.contents & 0b10000) >> 4
            alu.mode = Int(registerC.contents & 0b100000) >> 5
            alu.a = registerA.contents
            alu.b = registerB.contents
            alu.update()
            bus = alu.result
            if (!isResetting) {
                NSLog("EO -- output %d onto bus", bus)
            }
        }
        if (false == controlWordRegister.FI) {
            registerFlags.contents = UInt8(alu.carryFlag | alu.equalFlag<<1)
            if (!isResetting) {
                NSLog("FI -- flags are now %d", registerFlags.contents)
            }
        }
        if (false == controlWordRegister.AO) {
            bus = registerA.contents
            if (!isResetting) {
                NSLog("AO -- output %d onto bus", bus)
            }
        }
        if (false == controlWordRegister.BO) {
            bus = registerB.contents
            if (!isResetting) {
                NSLog("BO -- output %d onto bus", bus)
            }
        }
        
        if (false == controlWordRegister.YI) {
            if (!isResetting) {
                NSLog("YI -- input %d from bus", bus)
            }
            registerY.contents = bus
        }
        if (false == controlWordRegister.XI) {
            if (!isResetting) {
                NSLog("XI -- input %d from bus", bus)
            }
            registerX.contents = bus
        }
        if (false == controlWordRegister.AI) {
            if (!isResetting) {
                NSLog("AI -- input %d from bus", bus)
            }
            registerA.contents = bus
        }
        if (false == controlWordRegister.BI) {
            if (!isResetting) {
                NSLog("BI -- input %d from bus", bus)
            }
            registerB.contents = bus
        }
        if (false == controlWordRegister.DI) {
            if (!isResetting) {
                NSLog("DI -- input %d from bus", bus)
            }
            registerD.contents = bus
        }
        if (false == controlWordRegister.MI) {
            if (!isResetting) {
                NSLog("MI -- input %d from bus", bus)
            }
            dataRAM.contents[valueOfXYPair()] = bus
        }
        if (false == controlWordRegister.J) {
            if (!isResetting) {
                NSLog("J -- unconditional jump to %d", UInt16(valueOfXYPair()))
            }
            programCounter.contents = UInt16(valueOfXYPair())
        }
        if (!isResetting) {
            NSLog("done executing.")
        }
    }
    
    fileprivate func valueOfXYPair() -> Int {
        return Int(registerX.contents<<8 | registerY.contents)
    }
}
