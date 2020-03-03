//
//  InterpretingVMTests.swift
//  TurtleTTLTests
//
//  Created by Andrew Fox on 2/25/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import XCTest
import TurtleTTL

class InterpretingVMTests: XCTestCase {
    let isVerboseLogging = false
    
    fileprivate func makeLogger() -> Logger {
        return isVerboseLogging ? ConsoleLogger() : NullLogger()
    }
    
    fileprivate func makeVM(program: String) -> InterpretingVM {
        let microcodeGenerator = MicrocodeGenerator()
        microcodeGenerator.generate()
        let vm = InterpretingVM(cpuState: CPUStateSnapshot(),
                                microcodeGenerator: microcodeGenerator,
                                peripherals: ComputerPeripherals(),
                                dataRAM: Memory(),
                                instructionMemory: VirtualMachineUtils.makeInstructionROM(program: program))
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
