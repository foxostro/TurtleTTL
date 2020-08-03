//
//  YertleToTurtleMachineCodeCompiler.swift
//  SnapCore
//
//  Created by Andrew Fox on 5/31/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import TurtleCore
import TurtleCompilerToolbox

// Generates machine code for given IR code.
public class YertleToTurtleMachineCodeCompiler: NSObject {
    // Programs written in Snap use a push down stack, and store the stack
    // pointer in data RAM at addresses 0x0000 and 0x0001.
    // This is initialized on launch to 0xffff.
    public static let kStackPointerAddressHi: UInt16 = 0x0000
    public static let kStackPointerAddressLo: UInt16 = 0x0001
    public static let kStackPointerInitialValue: Int = 0xffff
    let kStackPointerHiHi = Int((YertleToTurtleMachineCodeCompiler.kStackPointerAddressHi & 0xff00) >> 8)
    let kStackPointerHiLo = Int( YertleToTurtleMachineCodeCompiler.kStackPointerAddressHi & 0x00ff)
    let kStackPointerLoHi = Int((YertleToTurtleMachineCodeCompiler.kStackPointerAddressLo & 0xff00) >> 8)
    let kStackPointerLoLo = Int( YertleToTurtleMachineCodeCompiler.kStackPointerAddressLo & 0x00ff)
    let kStackPointerInitialValueHi: Int = (kStackPointerInitialValue & 0xff00) >> 8
    let kStackPointerInitialValueLo: Int =  kStackPointerInitialValue & 0x00ff
    
    // Programs written in Snap store the frame pointer in data RAM at
    // addresses 0x0002 and 0x0003. This is initialized on launch to 0xffff.
    public static let kFramePointerAddressHi: UInt16 = 0x0002
    public static let kFramePointerAddressLo: UInt16 = 0x0003
    public static let kFramePointerInitialValue: Int = 0xffff
    let kFramePointerHiHi = Int((YertleToTurtleMachineCodeCompiler.kFramePointerAddressHi & 0xff00) >> 8)
    let kFramePointerHiLo = Int( YertleToTurtleMachineCodeCompiler.kFramePointerAddressHi & 0x00ff)
    let kFramePointerLoHi = Int((YertleToTurtleMachineCodeCompiler.kFramePointerAddressLo & 0xff00) >> 8)
    let kFramePointerLoLo = Int( YertleToTurtleMachineCodeCompiler.kFramePointerAddressLo & 0x00ff)
    let kFramePointerInitialValueHi: Int = (kFramePointerInitialValue & 0xff00) >> 8
    let kFramePointerInitialValueLo: Int =  kFramePointerInitialValue & 0x00ff
    
    let kScratchHi = 0
    let kScratchLo = 4
    
    let assembler: AssemblerBackEnd
    var patcherActions: [Patcher.Action] = []
    
    public private(set) var labelTable: [String:Int] = [:]
    public private(set) var instructions: [Instruction] = []
    public var currentSourceAnchor: SourceAnchor? = nil
    
    let labelMaker = LabelMaker(prefix: ".LL")
    
    public var injectCode: (YertleToTurtleMachineCodeCompiler) throws -> Void = {_ in}
    
    public init(assembler: AssemblerBackEnd) {
        self.assembler = assembler
    }
    
    public func compile(ir: [YertleInstruction],
                        mapInstructionToSource: [Int:SourceAnchor?] = [:],
                        base: Int = 0x0000) throws {
        patcherActions = []
        assembler.begin()
        try insertProgramPrologue()
        for i in 0..<ir.count {
            let instruction = ir[i]
            currentSourceAnchor = mapInstructionToSource[i] ?? nil
            switch instruction {
            case .push(let value): try push(value)
            case .push16(let value): try push16(value)
            case .pushsp: try pushsp()
            case .pop: try pop()
            case .pop16: try pop16()
            case .popn(let count): try popn(count)
            case .eq:  try eq()
            case .eq16:  try eq16()
            case .ne:  try ne()
            case .ne16:  try ne16()
            case .lt:  try lt()
            case .lt16:  try lt16()
            case .gt:  try gt()
            case .gt16:  try gt16()
            case .le:  try le()
            case .le16:  try le16()
            case .ge:  try ge()
            case .ge16:  try ge16()
            case .add: try add()
            case .add16: try add16()
            case .sub: try sub()
            case .sub16: try sub16()
            case .mul: try mul()
            case .mul16: try mul16()
            case .div: try div()
            case .div16: try div16()
            case .mod: try mod()
            case .mod16: try mod16()
            case .load(let address): try load(from: address)
            case .load16(let address): try load16(from: address)
            case .store(let address): try store(to: address)
            case .store16(let address): try store16(to: address)
            case .loadIndirect: try loadIndirect()
            case .loadIndirect16: try loadIndirect16()
            case .loadIndirectN(let count): try loadIndirectN(count)
            case .storeIndirect: try storeIndirect()
            case .storeIndirect16: try storeIndirect16()
            case .storeIndirectN(let count): try storeIndirectN(count)
            case .label(let name): try label(name)
            case .jmp(let label): try jmp(label)
            case .je(let label): try je(label)
            case .jalr(let label): try jalr(label)
            case .enter: try enter()
            case .leave: try leave()
            case .pushReturnAddress: try pushReturnAddress()
            case .leafRet: try leafRet()
            case .ret: try ret()
            case .hlt: hlt()
            case .peekPeripheral: try peekPeripheral()
            case .pokePeripheral: try pokePeripheral()
            case .dup: try dup()
            case .dup16: try dup16()
            }
        }
        try insertProgramEpilogue()
        assembler.end()
        let resolver: (SourceAnchor?, String) throws -> Int = {[weak self] (sourceAnchor: SourceAnchor?, identifier: String) in
            if let address = self!.labelTable[identifier] {
                return address
            } else {
                throw CompilerError(sourceAnchor: sourceAnchor, message: "cannot resolve label `\(identifier)'")
            }
        }
        let patcher = Patcher(inputInstructions: assembler.instructions,
                              resolver: resolver,
                              actions: patcherActions,
                              base: base)
        instructions = try patcher.patch()
    }
    
    // Inserts prologue code into the program, presumably at the beginning.
    // Insert a NOP at the beginning of every program because correct operation
    // of the hardware reset cycle requires this.
    // Likewise, correct operation of a program written in Snap requires some
    // inititalization to be performed before anything else occurs.
    func insertProgramPrologue() throws {
        assembler.nop()
        try assembler.li(.U, 0)
        try assembler.li(.V, 0)
        try assembler.li(.M, kStackPointerInitialValueHi)
        assembler.inuv()
        try assembler.li(.M, kStackPointerInitialValueLo)
        assembler.inuv()
        try assembler.li(.M, kFramePointerInitialValueHi)
        assembler.inuv()
        try assembler.li(.M, kFramePointerInitialValueLo)
    }
    
    // Inserts epilogue code into the program, presumably at the end.
    func insertProgramEpilogue() throws {
        assembler.hlt()
        try injectCode(self)
    }
    
    public func push(_ value: Int) throws {
        try decrementStackPointer()
        try loadStackPointerIntoUVandXY()
        
        // Write the new value to the top of the stack.
        try assembler.li(.M, value)
    }
    
    public func push16(_ value: Int) throws {
        let hi = (value>>8) & 0xff
        let lo =  value & 0xff
        try push(lo)
        try push(hi)
    }
    
    public func pushsp() throws {
        // Load the 16-bit stack pointer into AB and then push to the stack.
        try assembler.li(.U, kStackPointerHiHi)
        try assembler.li(.V, kStackPointerHiLo)
        try assembler.mov(.B, .M)
        try assembler.li(.U, kStackPointerLoHi)
        try assembler.li(.V, kStackPointerLoLo)
        try assembler.mov(.A, .M)
        try pushAToStack()
        try assembler.mov(.A, .B)
        try pushAToStack()
    }
    
    private func loadStackPointerIntoUVandXY() throws {
        // Load the 16-bit stack pointer into XY.
        try assembler.li(.U, kStackPointerHiHi)
        try assembler.li(.V, kStackPointerHiLo)
        try assembler.mov(.X, .M)
        try assembler.li(.U, kStackPointerLoHi)
        try assembler.li(.V, kStackPointerLoLo)
        try assembler.mov(.Y, .M)
        try assembler.mov(.U, .X)
        try assembler.mov(.V, .Y)
    }
    
    private func decrementStackPointer() throws {
        // First, save A in a well-known scratch location.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo)
        try assembler.mov(.M, .A)
        
        // Decrement the low byte of the 16-bit stack pointer.
        try assembler.li(.U, kStackPointerLoHi)
        try assembler.li(.V, kStackPointerLoLo)
        try assembler.mov(.A, .M)
        try assembler.dea(.NONE)
        try assembler.dea(.A)
        try assembler.mov(.M, .A)
        
        // While we have it in A, stash a copy of the low byte to Y.
        // This prevents the need for another memory load below.
        try assembler.mov(.Y, .A)
        
        // Decrement the high byte of the 16-bit stack pointer, but only if the
        // above decrement set the carry flag.
        try assembler.li(.U, kStackPointerHiHi)
        try assembler.li(.V, kStackPointerHiLo)
        try assembler.mov(.A, .M)
        try assembler.dca(.NONE)
        try assembler.dca(.A)
        try assembler.mov(.M, .A)
        
        // While we have it in A, stash a copy of the high byte to X.
        // This prevents the need for another memory load below.
        try assembler.mov(.X, .A)
        
        // Restore A
        // (We saved this to a well-known scratch location earlier.)
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo)
        try assembler.mov(.A, .M)
    }
    
    private func pop() throws {
        try popInMemoryStackIntoRegisterB()
    }
    
    private func popn(_ count: Int) throws {
        // This can probably be optimized.
        for _ in 0..<count {
            try pop()
        }
    }
    
    private func pushAToStack() throws {
        try decrementStackPointer()
        try loadStackPointerIntoUVandXY()
        
        // Write the new value to the top of the stack.
        try assembler.mov(.M, .A)
    }
    
    private func popInMemoryStackIntoRegisterB() throws {
        try loadStackPointerIntoUVandXY()
        
        // Load the top of the stack into B.
        try assembler.mov(.U, .X)
        try assembler.mov(.V, .Y)
        try assembler.mov(.B, .M)
        
        // Increment the stack pointer.
        assembler.inxy()
        
        // Write the modified stack pointer back to memory.
        try storeXYToStackPointer()
    }
    
    private func storeXYToStackPointer() throws {
        // Write the modified stack pointer back to memory.
        try assembler.li(.U, kStackPointerHiHi)
        try assembler.li(.V, kStackPointerHiLo)
        try assembler.mov(.M, .X)
        try assembler.li(.U, kStackPointerLoHi)
        try assembler.li(.V, kStackPointerLoLo)
        try assembler.mov(.M, .Y)
    }
    
    private func popTwoDecrementStackPointerAndLeaveInUVandXY() throws {
        try pop16()
        try decrementStackPointer()
        try loadStackPointerIntoUVandXY()
    }
    
    public func pop16() throws {
        try popInMemoryStackIntoRegisterB()
        try assembler.mov(.A, .B)
        try popInMemoryStackIntoRegisterB()
    }
    
    public func eq() throws {
        try popTwoDecrementStackPointerAndLeaveInUVandXY()
        
        let jumpTarget = assembler.programCounter + 9
        try assembler.li(.X, (jumpTarget & 0xff00) >> 8)
        try assembler.li(.Y,  jumpTarget & 0x00ff)
        assembler.cmp()
        assembler.cmp()
        try assembler.li(.M, 1)
        assembler.je()
        assembler.nop()
        assembler.nop()
        try assembler.li(.M, 0)
        assert(assembler.programCounter == jumpTarget)
    }
    
    public func eq16() throws {
        try eq16(valueOnPass: 1, valueOnFail: 0)
    }
    
    private func eq16(valueOnPass: Int, valueOnFail: Int) throws {
        let label_fail_test = labelMaker.next()
        let label_tail = labelMaker.next()
        
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+3)
        try assembler.mov(.M, .A)
        try assembler.li(.V, kScratchLo+2)
        try assembler.mov(.M, .B)
        
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.M, .A)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.M, .B)
        
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.A, .M)
        try assembler.li(.V, kScratchLo+3)
        try assembler.mov(.B, .M)
        assembler.cmp()
        assembler.cmp()
        
        try setAddressToLabel(label_fail_test)
        assembler.jne()
        assembler.nop()
        assembler.nop()
        
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.A, .M)
        try assembler.li(.V, kScratchLo+2)
        try assembler.mov(.B, .M)
        assembler.cmp()
        assembler.cmp()
        
        try setAddressToLabel(label_fail_test)
        assembler.jne()
        assembler.nop()
        assembler.nop()
        
        try push(valueOnPass)
        try jmp(label_tail)
        
        try label(label_fail_test)
        try push(valueOnFail)
        
        try label(label_tail)
    }
    
    public func ne() throws {
        try popTwoDecrementStackPointerAndLeaveInUVandXY()
        
        let jumpTarget = assembler.programCounter + 9
        try assembler.li(.X, (jumpTarget & 0xff00) >> 8)
        try assembler.li(.Y,  jumpTarget & 0x00ff)
        assembler.cmp()
        assembler.cmp()
        try assembler.li(.M, 1)
        assembler.jne()
        assembler.nop()
        assembler.nop()
        try assembler.li(.M, 0)
        assert(assembler.programCounter == jumpTarget)
    }
    
    public func ne16() throws {
        try eq16(valueOnPass: 0, valueOnFail: 1)
    }
    
    public func lt() throws {
        try popTwoDecrementStackPointerAndLeaveInUVandXY()
        
        let jumpTarget = assembler.programCounter + 9
        try assembler.li(.X, (jumpTarget & 0xff00) >> 8)
        try assembler.li(.Y,  jumpTarget & 0x00ff)
        assembler.cmp()
        assembler.cmp()
        try assembler.li(.M, 1)
        assembler.jl()
        assembler.nop()
        assembler.nop()
        try assembler.li(.M, 0)
        assert(assembler.programCounter == jumpTarget)
    }
    
    public func lt16() throws {
        let labelFailEqualityTest = labelMaker.next()
        let labelTail = labelMaker.next()
        
        let addressOfA = kScratchLo+0
        let addressOfB = kScratchLo+2

        // Pop `b' and store in scratch memory.
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.M, .B)

        // Pop `a' and store in scratch memory.
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.M, .B)
        
        // Compare low bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.B, .M)
        assembler.cmp()
        assembler.cmp()
        try setAddressToLabel(labelFailEqualityTest)
        assembler.jne()
        assembler.nop()
        assembler.nop()
        
        // Compare high bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.B, .M)
        assembler.cmp()
        assembler.cmp()
        try setAddressToLabel(labelFailEqualityTest)
        assembler.jne()
        assembler.nop()
        assembler.nop()
        
        // The two operands are equal so return false.
        try assembler.li(.A, 0)
        try jmp(labelTail)
        
        try label(labelFailEqualityTest)
        
        // Load the low bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.B, .M)

        // Compare the low bytes.
        try assembler.sub(.NONE)
        try assembler.sub(.NONE)

        // Load the high bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.B, .M)

        try setAddressToLabel(labelTail)
        
        // Compare the high bytes.
        try assembler.sbc(.NONE)
        try assembler.sbc(.NONE)
        
        // A <- (carry_flag) ? 1 : 0
        try assembler.li(.A, 1)
        assembler.jc()
        assembler.nop()
        assembler.nop()
        try assembler.li(.A, 0)
        try label(labelTail)
        
        try pushAToStack()
    }
    
    public func gt() throws {
        try popTwoDecrementStackPointerAndLeaveInUVandXY()
        
        let jumpTarget = assembler.programCounter + 9
        try assembler.li(.X, (jumpTarget & 0xff00) >> 8)
        try assembler.li(.Y,  jumpTarget & 0x00ff)
        assembler.cmp()
        assembler.cmp()
        try assembler.li(.M, 1)
        assembler.jg()
        assembler.nop()
        assembler.nop()
        try assembler.li(.M, 0)
        assert(assembler.programCounter == jumpTarget)
    }
    
    public func gt16() throws {
        let labelFailEqualityTest = labelMaker.next()
        let labelTail = labelMaker.next()
        let labelThen = labelMaker.next()
        
        let addressOfA = kScratchLo+0
        let addressOfB = kScratchLo+2

        // Pop `a' and store in scratch memory.
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.M, .B)

        // Pop `b' and store in scratch memory.
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.M, .B)
        
        // Compare low bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.B, .M)
        assembler.cmp()
        assembler.cmp()
        try setAddressToLabel(labelFailEqualityTest)
        assembler.jne()
        assembler.nop()
        assembler.nop()
        
        // Compare high bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.B, .M)
        assembler.cmp()
        assembler.cmp()
        try setAddressToLabel(labelFailEqualityTest)
        assembler.jne()
        assembler.nop()
        assembler.nop()
        
        // The two operands are equal so return true.
        try jmp(labelThen)
        
        try label(labelFailEqualityTest)
        
        // Load the low bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.B, .M)

        // Compare the low bytes.
        try assembler.sub(.NONE)
        try assembler.sub(.NONE)

        // Load the high bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.B, .M)

        // Compare the high bytes.
        try assembler.sbc(.NONE)
        try assembler.sbc(.NONE)
        
        // A <- (carry_flag) ? 0 : 1
        try setAddressToLabel(labelThen)
        assembler.jnc()
        assembler.nop()
        assembler.nop()
        try assembler.li(.A, 1)
        try setAddressToLabel(labelTail)
        assembler.jmp()
        assembler.nop()
        assembler.nop()
        try label(labelThen)
        try assembler.li(.A, 0)
        try label(labelTail)
        
        try pushAToStack()
    }
    
    public func le() throws {
        try popTwoDecrementStackPointerAndLeaveInUVandXY()
        
        let jumpTarget = assembler.programCounter + 9
        try assembler.li(.X, (jumpTarget & 0xff00) >> 8)
        try assembler.li(.Y,  jumpTarget & 0x00ff)
        assembler.cmp()
        assembler.cmp()
        try assembler.li(.M, 1)
        assembler.jle()
        assembler.nop()
        assembler.nop()
        try assembler.li(.M, 0)
        assert(assembler.programCounter == jumpTarget)
    }
    
    public func le16() throws {
        let addressOfA = kScratchLo+0
        let addressOfB = kScratchLo+2

        // Pop `b' and store in scratch memory.
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.M, .B)

        // Pop `a' and store in scratch memory.
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.M, .B)

        // Load the low bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.B, .M)

        // Compare the low bytes.
        try assembler.sub(.NONE)
        try assembler.sub(.NONE)

        // Load the high bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.B, .M)
        
        let labelThen = labelMaker.next()
        try setAddressToLabel(labelThen)

        // Compare the high bytes.
        try assembler.sbc(.NONE)
        try assembler.sbc(.NONE)
        
        // A <- (carry_flag==active) ? 1 : 0
        try assembler.li(.A, 1)
        assembler.jc()
        assembler.nop()
        assembler.nop()
        try assembler.li(.A, 0)
        try label(labelThen)
        try pushAToStack()
    }
    
    public func ge() throws {
        try popTwoDecrementStackPointerAndLeaveInUVandXY()
        
        let jumpTarget = assembler.programCounter + 9
        try assembler.li(.X, (jumpTarget & 0xff00) >> 8)
        try assembler.li(.Y,  jumpTarget & 0x00ff)
        assembler.cmp()
        assembler.cmp()
        try assembler.li(.M, 1)
        assembler.jge()
        assembler.nop()
        assembler.nop()
        try assembler.li(.M, 0)
        assert(assembler.programCounter == jumpTarget)
    }
    
    public func ge16() throws {
        let addressOfA = kScratchLo+0
        let addressOfB = kScratchLo+2

        // Pop `b' and store in scratch memory.
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.M, .B)

        // Pop `a' and store in scratch memory.
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.M, .B)

        // Load the low bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.B, .M)

        // Compare the low bytes.
        try assembler.sub(.NONE)
        try assembler.sub(.NONE)

        // Load the high bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.B, .M)

        // Compare the high bytes.
        try assembler.sbc(.NONE)
        try assembler.sbc(.NONE)
        
        // A <- (carry_flag) ? 0 : 1
        let labelTail = labelMaker.next()
        let labelThen = labelMaker.next()
        try setAddressToLabel(labelThen)
        assembler.jc()
        assembler.nop()
        assembler.nop()
        try assembler.li(.A, 0)
        try setAddressToLabel(labelTail)
        assembler.jmp()
        assembler.nop()
        assembler.nop()
        try label(labelThen)
        try assembler.li(.A, 1)
        try label(labelTail)
        
        try pushAToStack()
    }
    
    public func add() throws {
        try popTwoDecrementStackPointerAndLeaveInUVandXY()
        
        try assembler.add(.NONE)
        try assembler.add(.M)
    }
    
    public func add16() throws {
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+3)
        try assembler.mov(.M, .B)
        try assembler.li(.V, kScratchLo+2)
        try assembler.mov(.M, .A)
        
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.M, .B)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.M, .A)
        
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.A, .M)
        try assembler.li(.V, kScratchLo+3)
        try assembler.mov(.B, .M)
        try assembler.add(.NONE)
        try assembler.add(.M)
        
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.A, .M)
        try assembler.li(.V, kScratchLo+2)
        try assembler.mov(.B, .M)
        try assembler.adc(.NONE)
        try assembler.adc(.M)
        
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+3)
        try assembler.mov(.A, .M)
        try pushAToStack()
        
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+2)
        try assembler.mov(.A, .M)
        try pushAToStack()
    }
    
    public func sub() throws {
        try popTwoDecrementStackPointerAndLeaveInUVandXY()
        
        try assembler.sub(.NONE)
        try assembler.sub(.M)
    }
    
    public func sub16() throws {
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.M, .B)
        
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+2)
        try assembler.mov(.M, .A)
        try assembler.li(.V, kScratchLo+3)
        try assembler.mov(.M, .B)
        
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.A, .M)
        try assembler.li(.V, kScratchLo+3)
        try assembler.mov(.B, .M)
        try assembler.sub(.NONE)
        try assembler.sub(.M)
        
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.A, .M)
        try assembler.li(.V, kScratchLo+2)
        try assembler.mov(.B, .M)
        try assembler.sbc(.NONE)
        try assembler.sbc(.M)
        
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+3)
        try assembler.mov(.A, .M)
        try pushAToStack()
        
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+2)
        try assembler.mov(.A, .M)
        try pushAToStack()
    }
    
    public func mul() throws {
        try pop16()
        
        // A is the Multiplicand, B is the Multiplier
        let multiplierAddress = kScratchLo
        let multiplicandAddress = kScratchLo+1
        let resultAddress = kScratchLo+2
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, multiplierAddress)
        try assembler.mov(.M, .B)
        try assembler.li(.V, multiplicandAddress)
        try assembler.mov(.M, .A)
        try assembler.li(.V, resultAddress)
        try assembler.li(.M, 0)
        
        let loopHead = assembler.programCounter
        let loopTail = loopHead + 26
        
        // If the multiplier is equal to zero then bail because we're done.
        try assembler.li(.X, (loopTail & 0xff00) >> 8)
        try assembler.li(.Y,  loopTail & 0x00ff)
        try assembler.li(.V, multiplierAddress)
        try assembler.mov(.A, .M)
        try assembler.li(.B, 0)
        assembler.cmp()
        assembler.cmp()
        assembler.nop()
        assembler.je()
        assembler.nop()
        assembler.nop()
        
        // Add the multiplicand to the result.
        try assembler.li(.V, multiplicandAddress)
        try assembler.mov(.B, .M)
        try assembler.li(.V, resultAddress)
        try assembler.mov(.A, .M)
        try assembler.add(.NONE)
        try assembler.add(.M)
        
        // Decrement the multiplier.
        try assembler.li(.V, multiplierAddress)
        try assembler.mov(.A, .M)
        try assembler.dea(.NONE)
        try assembler.dea(.M)

        // Jump back to the beginning of the loop
        try assembler.li(.X, (loopHead & 0xff00) >> 8)
        try assembler.li(.Y,  loopHead & 0x00ff)
        assembler.jmp()
        assembler.nop()
        assembler.nop()
        assert(assembler.programCounter == loopTail)
        
        // Load the result into A.
        try assembler.li(.V, resultAddress)
        try assembler.mov(.A, .M)
        
        try pushAToStack()
    }
    
    public func mul16() throws {
        let multiplicandAddress = kScratchLo+0
        let multiplierAddress = kScratchLo+2
        let resultAddress = kScratchLo+4
        
        // Pop the multiplicand and store in scratch memory.
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, multiplicandAddress+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, multiplicandAddress+1)
        try assembler.mov(.M, .B)
        
        // Pop the multiplier and store in scratch memory.
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, multiplierAddress+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, multiplierAddress+1)
        try assembler.mov(.M, .B)
        
        // Initialize the result to zero.
        try assembler.li(.V, resultAddress+0)
        try assembler.li(.M, 0)
        try assembler.li(.V, resultAddress+1)
        try assembler.li(.M, 0)
        
        let loopHead = labelMaker.next()
        let loopTail = labelMaker.next()
        let notDone = labelMaker.next()
        
        try label(loopHead)
        
        // If the multiplier is equal to zero then bail because we're done.
        try setAddressToLabel(notDone)
        try assembler.li(.V, multiplierAddress+1)
        try assembler.mov(.A, .M)
        try assembler.li(.B, 0)
        assembler.cmp()
        assembler.cmp()
        assembler.nop()
        assembler.jne()
        assembler.nop()
        assembler.nop()
        try assembler.li(.V, multiplierAddress+0)
        try assembler.mov(.A, .M)
        assembler.cmp()
        assembler.cmp()
        assembler.nop()
        assembler.jne()
        assembler.nop()
        assembler.nop()
        try setAddressToLabel(loopTail)
        assembler.jmp()
        assembler.nop()
        assembler.nop()
        try label(notDone)
        
        // Add the multiplicand to the result.
        try assembler.li(.V, multiplicandAddress+1)
        try assembler.mov(.B, .M)
        try assembler.li(.V, resultAddress+1)
        try assembler.mov(.A, .M)
        try assembler.add(.NONE)
        try assembler.add(.M)
        try assembler.li(.V, multiplicandAddress+0)
        try assembler.mov(.B, .M)
        try assembler.li(.V, resultAddress+0)
        try assembler.mov(.A, .M)
        try assembler.adc(.NONE)
        try assembler.adc(.M)
        
        // Decrement the multiplier.
        try assembler.li(.V, multiplierAddress+1)
        try assembler.mov(.A, .M)
        try assembler.dea(.NONE)
        try assembler.dea(.M)
        try assembler.li(.V, multiplierAddress+0)
        try assembler.mov(.A, .M)
        try assembler.dca(.NONE)
        try assembler.dca(.M)

        // Jump back to the beginning of the loop
        try setAddressToLabel(loopHead)
        assembler.jmp()
        assembler.nop()
        assembler.nop()
        try label(loopTail)
        
        // Push the result onto the stack.
        // First the low byte
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, resultAddress+1)
        try assembler.mov(.A, .M)
        try pushAToStack()
        
        // Then the high byte
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, resultAddress+0)
        try assembler.mov(.A, .M)
        try pushAToStack()
    }
    
    public func div() throws {
        try pop16()
        
        // A is the Dividend, B is the Divisor
        let a = kScratchLo+0
        let b = kScratchLo+1
        let counter = kScratchLo+2
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, a)
        try assembler.mov(.M, .A)
        try assembler.li(.V, b)
        try assembler.mov(.M, .B)
        try assembler.li(.V, counter)
        try assembler.li(.M, 0)
        
        let loopHead = assembler.programCounter + 11
        let loopTail = loopHead + 28
        
        // if b == 0 then bail because it's division by zero
        try assembler.li(.X, (loopTail & 0xff00) >> 8)
        try assembler.li(.Y,  loopTail & 0x00ff)
        try assembler.li(.V, b)
        try assembler.mov(.A, .M)
        try assembler.li(.B, 0)
        assembler.cmp()
        assembler.cmp()
        assembler.nop()
        assembler.je()
        assembler.nop()
        assembler.nop()
        
        // while a >= b
        assert(assembler.programCounter == loopHead)
        try assembler.li(.X, (loopTail & 0xff00) >> 8)
        try assembler.li(.Y,  loopTail & 0x00ff)
        try assembler.li(.V, a)
        try assembler.mov(.A, .M)
        try assembler.li(.V, b)
        try assembler.mov(.B, .M)
        assembler.cmp()
        assembler.cmp()
        assembler.nop()
        assembler.jl()
        assembler.nop()
        assembler.nop()
        
        // a = a - b
        try assembler.li(.V, b)
        try assembler.mov(.B, .M)
        try assembler.li(.V, a)
        try assembler.mov(.A, .M)
        try assembler.sub(.NONE)
        try assembler.sub(.M)
        
        // c += 1
        try assembler.li(.V, counter)
        try assembler.mov(.A, .M)
        try assembler.li(.B, 1)
        try assembler.add(.NONE)
        try assembler.add(.M)

        // loop
        try assembler.li(.X, (loopHead & 0xff00) >> 8)
        try assembler.li(.Y,  loopHead & 0x00ff)
        assembler.jmp()
        assembler.nop()
        assembler.nop()
        assert(assembler.programCounter == loopTail)
        
        // Return the result in the A register.
        try assembler.li(.V, counter)
        try assembler.mov(.A, .M)
        
        try pushAToStack()
    }
    
    public func div16() throws {
        let addressOfB = kScratchLo+0
        let addressOfA = kScratchLo+2
        let counterAddress = kScratchLo+4

        // Pop the divisor and store in scratch memory.
        // `b' is the Divisor
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.M, .B)

        // Pop the dividend and store in scratch memory.
        // `a' is the Dividend
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.M, .B)

        // Initialize the counter to zero.
        // `c' is the counter
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, counterAddress+0)
        try assembler.li(.M, 0)
        try assembler.li(.V, counterAddress+1)
        try assembler.li(.M, 0)

        let loopHead = labelMaker.next()
        let loopTail = labelMaker.next()

        // if b == 0 then bail because it's division by zero
        try setAddressToLabel(loopHead)
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.A, .M)
        try assembler.li(.B, 0)
        assembler.cmp()
        assembler.cmp()
        assembler.nop()
        assembler.jne()
        assembler.nop()
        assembler.nop()
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.A, .M)
        assembler.cmp()
        assembler.cmp()
        assembler.nop()
        assembler.jne()
        assembler.nop()
        assembler.nop()
        try setAddressToLabel(loopTail)
        assembler.jmp()
        assembler.nop()
        assembler.nop()

        // while a >= b
        try label(loopHead)

        // Load the low bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.B, .M)

        // Compare the low bytes.
        try assembler.sub(.NONE)
        try assembler.sub(.NONE)

        // Load the high bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.B, .M)

        // Compare the high bytes.
        try assembler.sbc(.NONE)
        try assembler.sbc(.NONE)

        try setAddressToLabel(loopTail)
        assembler.jnc()
        assembler.nop()
        assembler.nop()

        // a = a - b
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.B, .M)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.A, .M)
        try assembler.sub(.NONE)
        try assembler.sub(.M)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.B, .M)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.A, .M)
        try assembler.sbc(.NONE)
        try assembler.sbc(.M)

        // c += 1
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, counterAddress+0)
        try assembler.mov(.X, .M)
        try assembler.li(.V, counterAddress+1)
        try assembler.mov(.Y, .M)
        assembler.inxy()
        try assembler.li(.V, counterAddress+0)
        try assembler.mov(.M, .X)
        try assembler.li(.V, counterAddress+1)
        try assembler.mov(.M, .Y)

        // loop
        try setAddressToLabel(loopHead)
        assembler.jmp()
        assembler.nop()
        assembler.nop()
        try label(loopTail)

        // Push the result to the stack. First the low byte, then the high byte.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, counterAddress+1)
        try assembler.mov(.A, .M)
        try pushAToStack()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, counterAddress+0)
        try assembler.mov(.A, .M)
        try pushAToStack()
    }
    
    public func mod() throws {
        try pop16()
        
        // A is the Dividend, B is the Divisor
        let a = kScratchLo+0
        let b = kScratchLo+1
        let counter = kScratchLo+2
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, a)
        try assembler.mov(.M, .A)
        try assembler.li(.V, b)
        try assembler.mov(.M, .B)
        try assembler.li(.V, counter)
        try assembler.li(.M, 0)
        
        let loopHead = assembler.programCounter + 11
        let loopTail = loopHead + 28
        
        // if b == 0 then bail because it's division by zero
        try assembler.li(.X, (loopTail & 0xff00) >> 8)
        try assembler.li(.Y,  loopTail & 0x00ff)
        try assembler.li(.V, b)
        try assembler.mov(.A, .M)
        try assembler.li(.B, 0)
        assembler.cmp()
        assembler.cmp()
        assembler.nop()
        assembler.je()
        assembler.nop()
        assembler.nop()
        
        // while a >= b
        assert(assembler.programCounter == loopHead)
        try assembler.li(.X, (loopTail & 0xff00) >> 8)
        try assembler.li(.Y,  loopTail & 0x00ff)
        try assembler.li(.V, a)
        try assembler.mov(.A, .M)
        try assembler.li(.V, b)
        try assembler.mov(.B, .M)
        assembler.cmp()
        assembler.cmp()
        assembler.nop()
        assembler.jl()
        assembler.nop()
        assembler.nop()
        
        // a = a - b
        try assembler.li(.V, b)
        try assembler.mov(.B, .M)
        try assembler.li(.V, a)
        try assembler.mov(.A, .M)
        try assembler.sub(.NONE)
        try assembler.sub(.M)
        
        // c += 1
        try assembler.li(.V, counter)
        try assembler.mov(.A, .M)
        try assembler.li(.B, 1)
        try assembler.add(.NONE)
        try assembler.add(.M)

        // loop
        try assembler.li(.X, (loopHead & 0xff00) >> 8)
        try assembler.li(.Y,  loopHead & 0x00ff)
        assembler.jmp()
        assembler.nop()
        assembler.nop()
        assert(assembler.programCounter == loopTail)
        
        // Return the result in the A register.
        try assembler.li(.V, a)
        try assembler.mov(.A, .M)
        
        try pushAToStack()
    }
    
    public func mod16() throws {
        let addressOfB = kScratchLo+0
        let addressOfA = kScratchLo+2
        let counterAddress = kScratchLo+4

        // Pop the divisor and store in scratch memory.
        // `b' is the Divisor
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.M, .B)

        // Pop the dividend and store in scratch memory.
        // `a' is the Dividend
        try pop16()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.M, .B)

        // Initialize the counter to zero.
        // `c' is the counter
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, counterAddress+0)
        try assembler.li(.M, 0)
        try assembler.li(.V, counterAddress+1)
        try assembler.li(.M, 0)

        let loopHead = labelMaker.next()
        let loopTail = labelMaker.next()

        // if b == 0 then bail because it's division by zero
        try setAddressToLabel(loopHead)
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.A, .M)
        try assembler.li(.B, 0)
        assembler.cmp()
        assembler.cmp()
        assembler.nop()
        assembler.jne()
        assembler.nop()
        assembler.nop()
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.A, .M)
        assembler.cmp()
        assembler.cmp()
        assembler.nop()
        assembler.jne()
        assembler.nop()
        assembler.nop()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.li(.M, 0)
        try assembler.li(.V, addressOfA+1)
        try assembler.li(.M, 0)
        try setAddressToLabel(loopTail)
        assembler.jmp()
        assembler.nop()
        assembler.nop()

        // while a >= b
        try label(loopHead)

        // Load the low bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.B, .M)

        // Compare the low bytes.
        try assembler.sub(.NONE)
        try assembler.sub(.NONE)

        // Load the high bytes of `a' and `b' into the A and B registers.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.A, .M)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.B, .M)

        // Compare the high bytes.
        try assembler.sbc(.NONE)
        try assembler.sbc(.NONE)

        try setAddressToLabel(loopTail)
        assembler.jnc()
        assembler.nop()
        assembler.nop()

        // a = a - b
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfB+1)
        try assembler.mov(.B, .M)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.A, .M)
        try assembler.sub(.NONE)
        try assembler.sub(.M)
        try assembler.li(.V, addressOfB+0)
        try assembler.mov(.B, .M)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.A, .M)
        try assembler.sbc(.NONE)
        try assembler.sbc(.M)

        // c += 1
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, counterAddress+0)
        try assembler.mov(.X, .M)
        try assembler.li(.V, counterAddress+1)
        try assembler.mov(.Y, .M)
        assembler.inxy()
        try assembler.li(.V, counterAddress+0)
        try assembler.mov(.M, .X)
        try assembler.li(.V, counterAddress+1)
        try assembler.mov(.M, .Y)

        // loop
        try setAddressToLabel(loopHead)
        assembler.jmp()
        assembler.nop()
        assembler.nop()
        try label(loopTail)

        // The result is in `a'. Push it to the stack.
        // First the low byte, then the high byte.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+1)
        try assembler.mov(.A, .M)
        try pushAToStack()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, addressOfA+0)
        try assembler.mov(.A, .M)
        try pushAToStack()
    }
    
    public func load(from address: Int) throws {
        try decrementStackPointer()
        
        // Load the value from RAM to A.
        try assembler.li(.U, (address & 0xff00) >> 8)
        try assembler.li(.V,  address & 0x00ff)
        try assembler.mov(.A, .M)
        
        try loadStackPointerIntoUVandXY()
        
        // Write A (the value we loaded) to the new top of the stack.
        try assembler.mov(.M, .A)
    }
    
    public func load16(from address: Int) throws {
        try assembler.li(.U, ((address+1) & 0xff00) >> 8)
        try assembler.li(.V,  (address+1) & 0x00ff)
        try assembler.mov(.A, .M)
        try pushAToStack()
        
        try assembler.li(.U, ((address+0) & 0xff00) >> 8)
        try assembler.li(.V,  (address+0) & 0x00ff)
        try assembler.mov(.A, .M)
        try pushAToStack()
    }
    
    public func store(to address: Int) throws {
        try loadStackPointerIntoUVandXY()
        
        // Copy the stop of the stack into A.
        try assembler.mov(.A, .M)
        
        // Now write A into the specified address.
        try assembler.li(.U, (address & 0xff00) >> 8)
        try assembler.li(.V,  address & 0x00ff)
        try assembler.mov(.M, .A)
    }
    
    public func store16(to address: Int) throws {
        try loadStackPointerIntoUVandXY()
        try assembler.mov(.A, .M)
        try assembler.li(.U, ((address+0) & 0xff00) >> 8)
        try assembler.li(.V,  (address+0) & 0x00ff)
        try assembler.mov(.M, .A)
        
        try assembler.mov(.U, .X)
        try assembler.mov(.V, .Y)
        assembler.inuv()
        try assembler.mov(.A, .M)
        try assembler.li(.U, ((address+1) & 0xff00) >> 8)
        try assembler.li(.V,  (address+1) & 0x00ff)
        try assembler.mov(.M, .A)
    }
    
    public func label(_ name: String) throws {
        guard labelTable[name] == nil else {
            throw CompilerError(sourceAnchor: currentSourceAnchor, message: "label redefines existing symbol: `\(name)'")
        }
        labelTable[name] = assembler.programCounter
    }
    
    public func loadIndirect() throws {
        try pop16()
        try assembler.mov(.U, .A)
        try assembler.mov(.V, .B)
        try assembler.mov(.A, .M)
        try pushAToStack()
    }
    
    public func loadIndirect16() throws {
        try pop16()
        
        // Stash the address in scratch memory.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+2)
        try assembler.mov(.M, .A)
        try assembler.li(.V, kScratchLo+3)
        try assembler.mov(.M, .B)
        
        // Load the low word and push to the stack.
        try assembler.mov(.U, .A)
        try assembler.mov(.V, .B)
        assembler.inuv()
        try assembler.mov(.A, .M)
        try pushAToStack()
        
        // Retrieve the address from scratch memory.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+2)
        try assembler.mov(.X, .M)
        try assembler.li(.V, kScratchLo+3)
        try assembler.mov(.Y, .M)
        
        // Load the high word and push to the stack.
        try assembler.mov(.U, .X)
        try assembler.mov(.V, .Y)
        try assembler.mov(.A, .M)
        try pushAToStack()
    }
    
    public func loadIndirectN(_ count: Int) throws {
        try pop16()
        
        // Stash the source address in scratch memory @ (4,5)
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+4)
        try assembler.mov(.M, .A)
        try assembler.li(.V, kScratchLo+5)
        try assembler.mov(.M, .B)
        
        // Stash the stack pointer in scratch memory @ (0,1)
        try assembler.li(.U, kStackPointerHiHi)
        try assembler.li(.V, kStackPointerHiLo)
        try assembler.mov(.A, .M)
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.M, .A)
        try assembler.li(.U, kStackPointerLoHi)
        try assembler.li(.V, kStackPointerLoLo)
        try assembler.mov(.A, .M)
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.M, .A)
        
        // Stash the count in scratch memory. @ (2,3)
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+2)
        try assembler.li(.M, Int((UInt16(count) & 0xff00) >> 8))
        try assembler.li(.V, kScratchLo+3)
        try assembler.li(.M, Int((UInt16(count) & 0x00ff)))
        
        // Perform a 16-bit subtraction to subtract the count from SP.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.A, .M)
        try assembler.li(.V, kScratchLo+3)
        try assembler.mov(.B, .M)
        try assembler.sub(.NONE)
        try assembler.sub(.M)
        
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.A, .M)
        try assembler.li(.V, kScratchLo+2)
        try assembler.mov(.B, .M)
        try assembler.sbc(.NONE)
        try assembler.sbc(.M)
        
        // Store the updated stack pointer back to memory.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+2)
        try assembler.mov(.A, .M)
        try assembler.li(.U, kStackPointerHiHi)
        try assembler.li(.V, kStackPointerHiLo)
        try assembler.mov(.M, .A)
        
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+3)
        try assembler.mov(.A, .M)
        try assembler.li(.U, kStackPointerLoHi)
        try assembler.li(.V, kStackPointerLoLo)
        try assembler.mov(.M, .A)
        
        // Copy bytes from the source address to the destination address on the stack.
        for i in 0..<count {
            // Load a byte from the source address into A.
            try assembler.li(.U, kScratchHi)
            try assembler.li(.V, kScratchLo+4)
            try assembler.mov(.X, .M)
            try assembler.li(.V, kScratchLo+5)
            try assembler.mov(.Y, .M)
            try assembler.mov(.U, .X)
            try assembler.mov(.V, .Y)
            try assembler.mov(.A, .M)
            
            // Store A to the destination address
            try assembler.li(.U, kScratchHi)
            try assembler.li(.V, kScratchLo+2)
            try assembler.mov(.X, .M)
            try assembler.li(.V, kScratchLo+3)
            try assembler.mov(.Y, .M)
            try assembler.mov(.U, .X)
            try assembler.mov(.V, .Y)
            try assembler.mov(.M, .A)
            
            if i < count - 1 {
                // Increment and write back the source address
                try assembler.li(.U, kScratchHi)
                try assembler.li(.V, kScratchLo+4)
                try assembler.mov(.X, .M)
                try assembler.li(.V, kScratchLo+5)
                try assembler.mov(.Y, .M)
                try assembler.mov(.U, .X)
                try assembler.mov(.V, .Y)
                assembler.inxy()
                try assembler.li(.U, kScratchHi)
                try assembler.li(.V, kScratchLo+4)
                try assembler.mov(.M, .X)
                try assembler.li(.V, kScratchLo+5)
                try assembler.mov(.M, .Y)
                
                // Increment and write back the destination address
                try assembler.li(.U, kScratchHi)
                try assembler.li(.V, kScratchLo+2)
                try assembler.mov(.X, .M)
                try assembler.li(.V, kScratchLo+3)
                try assembler.mov(.Y, .M)
                try assembler.mov(.U, .X)
                try assembler.mov(.V, .Y)
                assembler.inxy()
                try assembler.li(.U, kScratchHi)
                try assembler.li(.V, kScratchLo+2)
                try assembler.mov(.M, .X)
                try assembler.li(.V, kScratchLo+3)
                try assembler.mov(.M, .Y)
            }
        }
    }
    
    public func storeIndirect() throws {
        try pop16()
        
        // Stash the destination address in a well-known scratch location.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.M, .B)
        
        // Copy the top of the stack into A.
        try loadStackPointerIntoUVandXY()
        try assembler.mov(.A, .M)
        
        // Restore the stashed destination address to UV and XY.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.X, .M)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.Y, .M)
        try assembler.mov(.U, .X)
        try assembler.mov(.V, .Y)
        
        // Store A to the destination address.
        try assembler.mov(.M, .A)
    }
    
    public func storeIndirect16() throws {
        try pop16()
        
        // Stash the destination address in a well-known scratch location.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.M, .B)
        
        // Copy the two bytes at the top of the stack into A and B
        try loadStackPointerIntoUVandXY()
        try assembler.mov(.A, .M)
        assembler.inuv()
        try assembler.mov(.B, .M)
        
        // Restore the stashed destination address to UV and XY.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.X, .M)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.Y, .M)
        try assembler.mov(.U, .X)
        try assembler.mov(.V, .Y)
        
        // Store A and B to the destination address.
        try assembler.mov(.M, .A)
        assembler.inuv()
        try assembler.mov(.M, .B)
    }
    
    public func storeIndirectN(_ count: Int) throws {
        // TODO: storeIndirectN can probably be optimized. For example, use the BLT instructions and the ALU.
        try pop16()
        
        // Stash the destination address in a well-known scratch location.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.M, .B)
        
        for i in 0..<count {
            // Copy the i-th word on the stack to A.
            try loadStackPointerIntoUVandXY()
            for _ in 0..<i {
                assembler.inuv()
            }
            try assembler.mov(.A, .M)
            
            // Restore the stashed destination address to UV and XY.
            try assembler.li(.U, kScratchHi)
            try assembler.li(.V, kScratchLo+0)
            try assembler.mov(.X, .M)
            try assembler.li(.V, kScratchLo+1)
            try assembler.mov(.Y, .M)
            try assembler.mov(.U, .X)
            try assembler.mov(.V, .Y)
            
            // Offset to get the destination of the i-th word
            for _ in 0..<i {
                assembler.inuv()
            }
            
            // Store the i-th word
            try assembler.mov(.M, .A)
        }
    }
    
    public func jmp(_ label: String) throws {
        try setAddressToLabel(label)
        assembler.jmp()
        assembler.nop()
        assembler.nop()
    }
    
    public func je(_ label: String) throws {
        try pop16()
        
        assembler.cmp()
        assembler.cmp()
        try setAddressToLabel(label)
        assembler.je()
        assembler.nop()
        assembler.nop()
    }
    
    public func jalr(_ label: String) throws {
        try setAddressToLabel(label)
        assembler.jalr()
        assembler.nop()
        assembler.nop()
    }
    
    func setAddressToLabel(_ name: String) throws {
        patcherActions.append((index: assembler.programCounter,
                               sourceAnchor: currentSourceAnchor,
                               symbol: name,
                               shift: 8))
        try assembler.li(.X, 0xff)
        patcherActions.append((index: assembler.programCounter,
                               sourceAnchor: currentSourceAnchor,
                               symbol: name,
                               shift: 0))
        try assembler.li(.Y, 0xff)
    }
    
    public func enter() throws {
        // push fp in two bytes ; fp <- sp
        
        try assembler.li(.U, kFramePointerLoHi)
        try assembler.li(.V, kFramePointerLoLo)
        try assembler.mov(.A, .M)
        try pushAToStack()
        
        try assembler.li(.U, kFramePointerHiHi)
        try assembler.li(.V, kFramePointerHiLo)
        try assembler.mov(.A, .M)
        try pushAToStack()
        
        try assembler.li(.U, kStackPointerHiHi)
        try assembler.li(.V, kStackPointerHiLo)
        try assembler.mov(.X, .M)
        try assembler.li(.U, kStackPointerLoHi)
        try assembler.li(.V, kStackPointerLoLo)
        try assembler.mov(.Y, .M)

        try assembler.li(.U, kFramePointerHiHi)
        try assembler.li(.V, kFramePointerHiLo)
        try assembler.mov(.M, .X)
        try assembler.li(.U, kFramePointerLoHi)
        try assembler.li(.V, kFramePointerLoLo)
        try assembler.mov(.M, .Y)
    }
    
    public func leave() throws {
        // sp <- fp ; fp <- pop two bytes from the stack
        
        try assembler.li(.U, kFramePointerHiHi)
        try assembler.li(.V, kFramePointerHiLo)
        try assembler.mov(.X, .M)
        try assembler.li(.U, kFramePointerLoHi)
        try assembler.li(.V, kFramePointerLoLo)
        try assembler.mov(.Y, .M)
        
        try assembler.li(.U, kStackPointerHiHi)
        try assembler.li(.V, kStackPointerHiLo)
        try assembler.mov(.M, .X)
        try assembler.li(.U, kStackPointerLoHi)
        try assembler.li(.V, kStackPointerLoLo)
        try assembler.mov(.M, .Y)
        
        try popInMemoryStackIntoRegisterB()
        try assembler.li(.U, kFramePointerHiHi)
        try assembler.li(.V, kFramePointerHiLo)
        try assembler.mov(.M, .B)
        
        try popInMemoryStackIntoRegisterB()
        try assembler.li(.U, kFramePointerLoHi)
        try assembler.li(.V, kFramePointerLoLo)
        try assembler.mov(.M, .B)
    }
    
    private func pushReturnAddress() throws {
        try assembler.mov(.A, .H)
        try pushAToStack()
        try assembler.mov(.A, .G)
        try pushAToStack()
    }
    
    private func leafRet() throws {
        try assembler.mov(.X, .G)
        try assembler.mov(.Y, .H)
        assembler.jmp()
        assembler.nop()
        assembler.nop()
    }
    
    public func ret() throws {
        try popInMemoryStackIntoRegisterB()
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo)
        try assembler.mov(.M, .B)
        
        try popInMemoryStackIntoRegisterB()
        try assembler.mov(.Y, .B)
        
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo)
        try assembler.mov(.X, .M)
        
        assembler.jmp()
        assembler.nop()
        assembler.nop()
    }
    
    public func hlt() {
        assembler.hlt()
    }
    
    public func peekPeripheral() throws {
        try pop16()
        try assembler.mov(.U, .A)
        try assembler.mov(.V, .B)
        try assembler.mov(.A, .P)
        try pushAToStack()
    }
    
    public func pokePeripheral() throws {
        try popInMemoryStackIntoRegisterB()
        try assembler.mov(.D, .B)
        
        try pop16()
        
        // Stash the destination address in a well-known scratch location.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.M, .A)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.M, .B)
        
        // Copy the top of the stack into A.
        try loadStackPointerIntoUVandXY()
        try assembler.mov(.A, .M)
        
        // Restore the stashed destination address to XY.
        try assembler.li(.U, kScratchHi)
        try assembler.li(.V, kScratchLo+0)
        try assembler.mov(.X, .M)
        try assembler.li(.V, kScratchLo+1)
        try assembler.mov(.Y, .M)
        
        // Store A to the destination address on the peripheral bus.
        try assembler.mov(.P, .A)
    }
    
    public func dup() throws {
        let scratch = kScratchHi<<8 + kScratchLo
        try store(to: scratch)
        try load(from: scratch)
    }
    
    public func dup16() throws {
        let scratch = kScratchHi<<8 + kScratchLo + 2
        try store16(to: scratch)
        try load16(from: scratch)
    }
}
