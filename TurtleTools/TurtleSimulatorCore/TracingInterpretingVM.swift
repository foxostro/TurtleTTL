//
//  TracingInterpretingVM.swift
//  TurtleSimulatorCore
//
//  Created by Andrew Fox on 2/26/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import TurtleCore

public class TracingInterpretingVM: VirtualMachine {
    public let profiler = TraceProfiler()
    public private(set) var traceCache : [UInt16:Trace] = [:]
    public var allowsRunningTraces = true
    var traceRecorder: TraceRecorder? = nil
    var prevState = CPUStateSnapshot()
    let interpreter: Interpreter
    
    public init(cpuState: CPUStateSnapshot,
                microcodeGenerator: MicrocodeGenerator,
                peripherals: ComputerPeripherals,
                dataRAM: Memory,
                instructionMemory: InstructionMemory,
                flagBreak: AtomicBooleanFlag,
                interpreter: Interpreter,
                programDebugInfo: ProgramDebugInfo? = nil) {
        self.interpreter = interpreter
        super.init(cpuState: cpuState,
                   microcodeGenerator: microcodeGenerator,
                   peripherals: peripherals,
                   dataRAM: dataRAM,
                   instructionMemory: instructionMemory,
                   flagBreak: flagBreak)
        self.interpreter.delegate = self
    }
    
    public override func singleStep() {
        step(allowsRunningTraces: false)
    }
    
    public override func step() {
        step(allowsRunningTraces: allowsRunningTraces)
    }
    
    private func step(allowsRunningTraces: Bool) {
        prevState = cpuState.copy() as! CPUStateSnapshot // TODO: Is it a problem to allocate a state object every tick?
        maybeAddInitialRecordedState()
        
        let pc = prevState.if_id.pc
        maybeStopTraceRecording(pc)
        
        if traceRecorder == nil, let trace = traceCache[pc.value] {
            // If we have a trace for this PC then execute it.
            runTrace(allowsRunningTraces, trace)
        } else if traceRecorder == nil && profiler.isHot(pc: pc.value) {
            // Else, if the instruction is hot, and we're not already recording,
            // then begin recording now.
            beginRecordingAndStep(pc)
        } else {
            // Else, emulate a single clock tick.
            doStep()
        }
        
        logStateChanges()
        logger?.append("-----")
    }
    
    private func maybeAddInitialRecordedState() {
        if shouldRecordStatesOverTime && recordedStatesOverTime.isEmpty {
            recordedStatesOverTime.append(prevState.copy() as! CPUStateSnapshot)
        }
    }
    
    private func maybeStopTraceRecording(_ pc: ProgramCounter) {
        guard let traceRecorder = traceRecorder else { return }
        
        if traceRecorder.trace.pc! == pc {
            // If the program counter has come to the start of the trace again then
            // the loop has closed and recording should stop.
            let trace = traceRecorder.trace
            assert(traceCache[pc.value] == nil)
            traceCache[trace.pc!.value] = trace
            self.traceRecorder = nil
            logger?.append("Finished recording trace at pc=\(trace.pc!) because the loop has closed.")
            logTrace(trace)
        }
    }
    
    private func logTrace(_ trace: Trace) {
        guard let logger = logger else { return }
        logger.append("Listing trace at pc=\(trace.pc!):")
        for line in trace.description.components(separatedBy: "\n") {
            logger.append(line)
        }
        logger.append("===")
    }
    
    private func runTrace(_ allowsRunningTraces: Bool, _ trace: Trace) {
        assert(traceRecorder == nil)
        if allowsRunningTraces {
            logger?.append("Running trace for pc=\(trace.pc!)...")
            actuallyRunTrace(trace)
            logger?.append("...Finished running trace for pc=\(trace.pc!).")
        }
        doStep()
    }
    
    private func actuallyRunTrace(_ trace: Trace) {
        let executor = TraceExecutor(trace: trace,
                                     cpuState: cpuState,
                                     peripherals: peripherals,
                                     dataRAM: dataRAM,
                                     instructionDecoder: microcodeGenerator.microcode,
                                     flagBreak: flagBreak)
        executor.logger = logger
        executor.delegate = self
        executor.shouldRecordStatesOverTime = shouldRecordStatesOverTime
        executor.stopwatch = stopwatch
        executor.run()
        if shouldRecordStatesOverTime {
            recordedStatesOverTime += executor.recordedStatesOverTime
        }
        
        // Flush the pipeline so we immediately begin executing the continuing
        // instruction after the trace.
        let pc = cpuState.pc
        cpuState.if_id = fetchInstruction(from: pc)
        cpuState.pc = pc.increment().increment()
        cpuState.pc_if = pc.increment()
        cpuState.registerC = Register(withValue: cpuState.if_id.immediate)
    }
    
    private func beginRecordingAndStep(_ pc: ProgramCounter) {
        logger?.append("Beginning trace recording for pc=\(pc)")
        assert(traceRecorder == nil)
        traceRecorder = TraceRecorder(microcodeGenerator: microcodeGenerator)
        doStep()
    }
    
    private func doStep() {
        interpreter.step()
        stopwatch?.retireInstructions(count: 1)
        profile()
        record()
        maybeAddAnotherRecordedState()
        numberOfStepsExecuted += 1
    }
    
    private func maybeAddAnotherRecordedState() {
        if shouldRecordStatesOverTime {
            recordedStatesOverTime.append(cpuState.copy() as! CPUStateSnapshot)
        }
    }
    
    private func profile() {
        // Record backwards jumps.
        let oldPC = prevState.pc.value
        let newPC = cpuState.pc.value
        if newPC < oldPC {
            let hasBecomeHot = profiler.hit(pc: newPC)
            if hasBecomeHot {
                logger?.append("Jump destination \(cpuState.pc) has become hot.")
            }
        }
    }
    
    private func record() {
        // Update the trace if we're recording one now.
        if let traceRecorder = traceRecorder {
            logger?.append("recording: \(prevState.if_id)")
            traceRecorder.record(instruction: prevState.if_id,
                                 stateBefore: prevState)
        }
    }
    
    private func logStateChanges() {
        if let logger = logger {
            CPUStateSnapshot.logChanges(logger: logger,
                                        prevState: prevState,
                                        nextState: cpuState)
        }
    }
    
    // Indicates to the virtual machine that instruction memory was modified by
    // an external actor. This provides the virtual machine with an opportunity
    // to invalidate internal caches and perform other book keeping.
    public override func didModifyInstructionMemory() {
        if let traceRecorder = traceRecorder {
            let trace = traceRecorder.trace
            logger?.append("Aborting recording of trace at pc=\(trace.pc!) because instruction memory has been modified.")
            self.traceRecorder = nil
        }
        traceCache = [:]
        profiler.reset()
    }
}
