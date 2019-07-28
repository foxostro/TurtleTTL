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
        NSLog("executing:");
        if (false == controlWordRegister.CO) {
            bus = registerC.contents
            NSLog("CO -- output %d onto bus", bus)
        }
        if (false == controlWordRegister.YO) {
            bus = registerY.contents
            NSLog("YO -- output %d onto bus", bus)
        }
        if (false == controlWordRegister.XO) {
            bus = registerX.contents
            NSLog("XO -- output %d onto bus", bus)
        }
        if (false == controlWordRegister.MO) {
            bus = dataRAM.contents[valueOfXYPair()]
            NSLog("MO -- output %d onto bus", bus)
        }
        if (false == controlWordRegister.EO) {
            alu.s = registerC.contents & 0b1111
            alu.carryIn = Int(registerC.contents & 0b10000) >> 4
            alu.mode = Int(registerC.contents & 0b100000) >> 5
            alu.a = registerA.contents
            alu.b = registerB.contents
            alu.update()
            bus = alu.result
            NSLog("EO -- output %d onto bus", bus)
        }
        if (false == controlWordRegister.FI) {
            registerFlags.contents = UInt8(alu.carryFlag | alu.equalFlag<<1)
            NSLog("FI -- flags are now %d", registerFlags.contents)
        }
        if (false == controlWordRegister.AO) {
            bus = registerA.contents
            NSLog("AO -- output %d onto bus", bus)
        }
        if (false == controlWordRegister.BO) {
            bus = registerB.contents
            NSLog("BO -- output %d onto bus", bus)
        }
        
        if (false == controlWordRegister.YI) {
            NSLog("YI -- input %d from bus", bus)
            registerY.contents = bus
        }
        if (false == controlWordRegister.XI) {
            NSLog("XI -- input %d from bus", bus)
            registerX.contents = bus
        }
        if (false == controlWordRegister.AI) {
            NSLog("AI -- input %d from bus", bus)
            registerA.contents = bus
        }
        if (false == controlWordRegister.BI) {
            NSLog("BI -- input %d from bus", bus)
            registerB.contents = bus
        }
        if (false == controlWordRegister.DI) {
            NSLog("DI -- input %d from bus", bus)
            registerD.contents = bus
        }
        if (false == controlWordRegister.MI) {
            NSLog("MI -- input %d from bus", bus)
            dataRAM.contents[valueOfXYPair()] = bus
        }
        if (false == controlWordRegister.J) {
            NSLog("J -- unconditional jump to %d", UInt16(valueOfXYPair()))
            programCounter.contents = UInt16(valueOfXYPair())
        }
        NSLog("done executing.")
    }
    
    fileprivate func valueOfXYPair() -> Int {
        return Int(registerX.contents<<8 | registerY.contents)
    }
}
