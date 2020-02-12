//
//  Computer.swift
//  TurtleTTL
//
//  Created by Andrew Fox on 1/22/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import Cocoa

public protocol Computer {
    var logger: Logger? { get set }
    var controlWord: ControlWord { get set }
    
    func step() -> Void
    func reset() -> Void
    
    func provideMicrocode(microcode: InstructionDecoder) -> Void
    func loadMicrocode(from: URL) throws
    func saveMicrocode(to: URL) throws
    
    func provideInstructions(_ instructions: [Instruction]) -> Void
    func loadProgram(from: URL) throws
    func saveProgram(to: URL) throws
    
    func provideSerialInput(bytes: [UInt8]) -> Void
    
    var cpuState: CPUStateSnapshot { get }
    
    func describeSerialOutput() -> String
}
