//
//  InterpretingVM.swift
//  TurtleTTL
//
//  Created by Andrew Fox on 2/25/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import Foundation

public class InterpretingVM: VirtualMachine {
    let interpreter: Interpreter
    
    public override init(cpuState: CPUStateSnapshot,
                         microcodeGenerator: MicrocodeGenerator,
                         peripherals: ComputerPeripherals,
                         dataRAM: RAM,
                         instructionROM: InstructionROM,
                         upperInstructionRAM: RAM,
                         lowerInstructionRAM: RAM) {
        interpreter = Interpreter(cpuState: cpuState,
                                  peripherals: peripherals,
                                  dataRAM: dataRAM,
                                  instructionDecoder: microcodeGenerator.microcode)
        super.init(cpuState: cpuState,
                   microcodeGenerator: microcodeGenerator,
                   peripherals: peripherals,
                   dataRAM: dataRAM,
                   instructionROM: instructionROM,
                   upperInstructionRAM: upperInstructionRAM,
                   lowerInstructionRAM: lowerInstructionRAM)
        interpreter.delegate = self
    }
    
    public override func step() {
        logger?.append("InterpretingVM: step")
        
        // TODO: Is it a problem to allocate a state object every tick?
        let prevState = cpuState.copy() as! CPUStateSnapshot
        
        interpreter.step()
        
        if let logger = logger {
            CPUStateSnapshot.logChanges(logger: logger,
                                        prevState: prevState,
                                        nextState: cpuState)
            logger.append("-----")
        }
    }
}
