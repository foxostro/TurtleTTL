//
//  ViewController.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet var computer:Computer!
    @IBOutlet var registerA:NSTextField!
    @IBOutlet var registerB:NSTextField!
    @IBOutlet var registerC:NSTextField!
    @IBOutlet var registerD:NSTextField!
    @IBOutlet var registerX:NSTextField!
    @IBOutlet var registerY:NSTextField!
    @IBOutlet var alu:NSTextField!
    @IBOutlet var controlWord:NSTextField!
    @IBOutlet var programCounter:NSTextField!
    @IBOutlet var bus:NSTextField!
    @IBOutlet var stepButton:NSButton!
    @IBOutlet var runButton:NSButton!
    var isExecuting = false {
        didSet {
            stepButton.isEnabled = !isExecuting
            runButton.stringValue = isExecuting ? "Stop" : "Run"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let nop = 0
        let nopControl = ControlWord()
        computer.instructionDecoder.store(opcode: nop, controlWord: nopControl)
        
        let hlt = 1
        let hltControl = ControlWord()
        hltControl.HLT = true
        computer.instructionDecoder.store(opcode: hlt, controlWord: hltControl)
        
        let lda = 2
        let ldaControl = ControlWord()
        ldaControl.CO = false
        ldaControl.AI = false
        computer.instructionDecoder.store(opcode: lda, controlWord: ldaControl)
        
        let ldb = 3
        let ldbControl = ControlWord()
        ldbControl.CO = false
        ldbControl.BI = false
        computer.instructionDecoder.store(opcode: ldb, controlWord: ldbControl)
        
        let ldx = 4
        let ldxControl = ControlWord()
        ldxControl.CO = false
        ldxControl.XI = false
        computer.instructionDecoder.store(opcode: ldx, controlWord: ldxControl)
        
        let ldy = 5
        let ldyControl = ControlWord()
        ldyControl.CO = false
        ldyControl.YI = false
        computer.instructionDecoder.store(opcode: ldy, controlWord: ldyControl)
        
        let alu = 6
        let aluControl = ControlWord()
        aluControl.EO = false
        aluControl.DI = false
        aluControl.FI = false
        computer.instructionDecoder.store(opcode: alu, controlWord: aluControl)
        
        let jc = 7
        let jcControl = ControlWord()
        jcControl.J = false
        computer.instructionDecoder.store(opcode: jc,
                                          carryFlag:1,
                                          equalFlag:0,
                                          controlWord: jcControl)
        computer.instructionDecoder.store(opcode: jc,
                                          carryFlag:0,
                                          equalFlag:0,
                                          controlWord: nopControl)
        computer.instructionDecoder.store(opcode: jc,
                                          carryFlag:1,
                                          equalFlag:1,
                                          controlWord: jcControl)
        computer.instructionDecoder.store(opcode: jc,
                                          carryFlag:0,
                                          equalFlag:1,
                                          controlWord: nopControl)
        
        computer.provideInstructions([
            Instruction(opcode: nop, immediate: 0),          // NOP
            Instruction(opcode: lda, immediate: 1),          // LDA $1
            Instruction(opcode: ldb, immediate: 2),          // LDB $2
            Instruction(opcode: hlt, immediate: 0)])         // HLT
        
        refresh()
        
        isExecuting = false
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: {timer in
            self.tick()
        })
    }

    @IBAction func step(_ sender: Any) {
        if (!isExecuting) {
            computer.step()
            refresh()
        }
    }
    
    @IBAction func execute(_ sender: Any) {
        isExecuting = !isExecuting
    }
    
    func tick() {
        if (computer.controlWordRegister.HLT) {
            isExecuting = false
        }
        
        if (isExecuting) {
            computer.step()
            refresh()
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        isExecuting = false
        computer.reset()
        refresh()
    }
    
    func refresh() {
        registerA.stringValue = String(computer.registerA.contents, radix: 16)
        registerB.stringValue = String(computer.registerB.contents, radix: 16)
        registerC.stringValue = String(computer.registerC.contents, radix: 16)
        registerD.stringValue = String(computer.registerD.contents)
        registerX.stringValue = String(computer.registerX.contents, radix: 16)
        registerY.stringValue = String(computer.registerY.contents, radix: 16)
        alu.stringValue = String(computer.alu.result, radix: 16)
        controlWord.stringValue = computer.controlWordRegister.description
        programCounter.stringValue = String(computer.programCounter.contents, radix: 16)
        bus.stringValue = String(computer.pipelineStageExecute.bus, radix: 16)
    }
}

