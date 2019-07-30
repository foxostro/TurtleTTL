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
    @IBOutlet var aluResult:NSTextField!
    @IBOutlet var controlWord:NSTextField!
    @IBOutlet var controlSignals:NSTextField!
    @IBOutlet var programCounter:NSTextField!
    @IBOutlet var bus:NSTextField!
    @IBOutlet var outputDisplay:NSTextField!
    @IBOutlet var stepButton:NSButton!
    @IBOutlet var runButton:NSButton!
    @IBOutlet var eventLog:NSTextView!
    var logger:TextViewLogger!
    let executor = ComputerExecutor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLogger()
        feedExampleProgram()
        setupExecutor()
    }
    
    func setupLogger() {
        logger = TextViewLogger(textView: eventLog)
        computer.logger = logger
    }
    
    func feedExampleProgram() {
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
    }
    
    func setupExecutor() {
        executor.computer = computer
        
        executor.onStep = {
            self.refresh()
        }
        executor.didStart = {
            self.makeStopButtonAvailable()
        }
        executor.didStop = {
            self.makeRunButtonAvailable()
        }
        executor.didHalt = {
            self.stepButton.isEnabled = false
            self.runButton.isEnabled = false
        }
        executor.didReset = {
            self.makeRunButtonAvailable()
            self.stepButton.isEnabled = true
            self.runButton.isEnabled = true
            self.logger.clear()
            self.refresh()
        }
        
        executor.beginTimer()
    }
    
    func makeRunButtonAvailable() {
        stepButton.isEnabled = true
        runButton.title = "Run"
        runButton.keyEquivalent = "r"
        runButton.keyEquivalentModifierMask = NSEvent.ModifierFlags.command
    }
    
    func makeStopButtonAvailable() {
        stepButton.isEnabled = false
        runButton.title = "Stop"
        runButton.keyEquivalent = "."
        runButton.keyEquivalentModifierMask = NSEvent.ModifierFlags.command
    }

    @IBAction func step(_ sender: Any) {
        executor.step()
    }
    
    @IBAction func runOrStop(_ sender: Any) {
        executor.runOrStop()
    }
    
    @IBAction func reset(_ sender: Any) {
        executor.reset()
    }
    
    @IBAction func modifyRegisterA(_ sender: Any) {
        computer.registerA.stringValue = registerA.stringValue
        refresh()
    }
    
    @IBAction func modifyRegisterB(_ sender: Any) {
        computer.registerB.stringValue = registerB.stringValue
        refresh()
    }
    
    @IBAction func modifyRegisterD(_ sender: Any) {
        computer.registerD.stringValue = registerD.stringValue
        refresh()
    }
    
    @IBAction func modifyRegisterX(_ sender: Any) {
        computer.registerX.stringValue = registerX.stringValue
        refresh()
    }
    
    @IBAction func modifyRegisterY(_ sender: Any) {
        computer.registerY.stringValue = registerY.stringValue
        refresh()
    }
    
    @IBAction func modifyRegisterPC(_ sender: Any) {
        computer.programCounter.stringValue = programCounter.stringValue
        refresh()
    }
    
    func refresh() {
        registerA.stringValue = computer.registerA.stringValue
        registerB.stringValue = computer.registerB.stringValue
        registerC.stringValue = computer.registerC.stringValue
        registerD.stringValue = computer.registerD.stringValue
        registerX.stringValue = computer.registerX.stringValue
        registerY.stringValue = computer.registerY.stringValue
        aluResult.stringValue = computer.alu.stringValue
        controlWord.stringValue = computer.controlWordRegister.stringValue
        controlSignals.stringValue = computer.controlWordRegister.description
        programCounter.stringValue = computer.programCounter.stringValue
        bus.stringValue = computer.busStringValue
        outputDisplay.stringValue = String(computer.registerD.contents)
    }
    
    @IBAction func save(sender: Any?) {
        let lowerDecoderROM = self.computer.instructionDecoder.lowerROM.data
        let upperDecoderROM = self.computer.instructionDecoder.upperROM.data
        let lowerInstructionROM = self.computer.instructionROM.lowerROM.data
        let upperInstructionROM = self.computer.instructionROM.upperROM.data
        
        let panel = NSSavePanel()
        panel.canCreateDirectories = true
        panel.begin { (response: NSApplication.ModalResponse) in
            if (response == NSApplication.ModalResponse.OK) {
                if let url = panel.url {
                    do {
                        try FileManager.default.createDirectory(at: url, withIntermediateDirectories: false, attributes: [:])
                        try lowerDecoderROM.write(to: url.appendingPathComponent("Lower Decoder ROM.bin"))
                        try upperDecoderROM.write(to: url.appendingPathComponent("Upper Decoder ROM.bin"))
                        try lowerInstructionROM.write(to: url.appendingPathComponent("Lower Instruction ROM.bin"))
                        try upperInstructionROM.write(to: url.appendingPathComponent("Upper Instruction ROM.bin"))
                    } catch {
                        NSAlert(error: error).runModal()
                    }
                }
            }
        }
    }
    
    @IBAction func load(sender: Any?) {
        let panel = NSOpenPanel()
        panel.canChooseFiles = false
        panel.canChooseDirectories = true
        panel.begin { (response: NSApplication.ModalResponse) in
            if (response == NSApplication.ModalResponse.OK) {
                if let url = panel.url {
                    do {
                        try self.computer.instructionDecoder.lowerROM.data = Data(contentsOf: url.appendingPathComponent("Lower Decoder ROM.bin") as URL)
                        try self.computer.instructionDecoder.upperROM.data = Data(contentsOf: url.appendingPathComponent("Upper Decoder ROM.bin") as URL)
                        try self.computer.instructionROM.lowerROM.data = Data(contentsOf: url.appendingPathComponent("Lower Instruction ROM.bin") as URL)
                        try self.computer.instructionROM.upperROM.data = Data(contentsOf: url.appendingPathComponent("Lower Instruction ROM.bin") as URL)
                    } catch {
                        NSAlert(error: error).runModal()
                    }
                }
            }
        }
    }
}
