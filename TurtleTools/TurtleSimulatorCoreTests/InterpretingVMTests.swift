//
//  InterpretingVMTests.swift
//  TurtleSimulatorCoreTests
//
//  Created by Andrew Fox on 2/25/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import XCTest
import TurtleSimulatorCore
import TurtleCore

class InterpretingVMTests: XCTestCase {
    let isVerboseLogging = false
    
    private func makeLogger() -> Logger? {
        return isVerboseLogging ? ConsoleLogger() : nil
    }
    
    private func makeVM(program: String) -> InterpretingVM {
        let cpuState = CPUStateSnapshot()
        let peripherals = ComputerPeripherals()
        let dataRAM = Memory()
        let microcodeGenerator = MicrocodeGenerator()
        microcodeGenerator.generate()
        let instructionDecoder = microcodeGenerator.microcode
        let interpreter = Interpreter(cpuState: cpuState,
                                      peripherals: peripherals,
                                      dataRAM: dataRAM,
                                      instructionDecoder: instructionDecoder)
        let vm = InterpretingVM(cpuState: cpuState,
                                microcodeGenerator: microcodeGenerator,
                                peripherals: peripherals,
                                dataRAM: dataRAM,
                                instructionMemory: VirtualMachineUtils.makeInstructionROM(program: program),
                                flagBreak: AtomicBooleanFlag(),
                                interpreter: interpreter)
        vm.logger = makeLogger()
        return vm
    }
    
    func testExecuteProgram() {
        let vm = makeVM(program: "HLT")
        
        try! vm.runUntilHalted()
        
        XCTAssertEqual(vm.cpuState.pc.value, 4)
        XCTAssertEqual(vm.cpuState.controlWord.HLT, .active)
    }
    
    func testExecuteFromInstructionRAM() {
        let vm = makeVM(program: """
LI X, 0x80
LI Y, 0x00
JMP
NOP
NOP
""")
        vm.instructionMemory.store(value: 0x0100, to: 0x8000) // HLT
        try! vm.runUntilHalted()
        
        XCTAssertEqual(vm.cpuState.pc.value, 0x8003)
        XCTAssertEqual(vm.cpuState.controlWord.HLT, .active)
    }
}
