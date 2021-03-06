//
//  CrackleConstantPropagationOptimizationPass.swift
//  SnapCore
//
//  Created by Andrew Fox on 10/26/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

public class CrackleConstantPropagationOptimizationPass: NSObject {
    public var unoptimizedProgram = CrackleBasicBlock()
    public var optimizedProgram = CrackleBasicBlock()
    public var memory = Array<UInt8?>.init(repeating: nil, count: 65536)
    
    public func optimize() {
        optimizedProgram = unoptimizedProgram.copy()
        optimizedProgram.instructions = unoptimizedProgram.instructions.map { rewrite($0) }
    }
    
    public func rewrite(_ instruction: CrackleInstruction) -> CrackleInstruction {
        switch instruction {
        case .subi16(let c, let a, let right):
            if let left0 = memory[a+0], let left1 = memory[a+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let result = left &- UInt16(right)
                return rewrite(.storeImmediate16(c, Int(result)))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .addi16(let c, let a, let right):
            if let left0 = memory[a+0], let left1 = memory[a+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let result = left &+ UInt16(right)
                return rewrite(.storeImmediate16(c, Int(result)))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .muli16(let c, let a, let right):
            if let left0 = memory[a+0], let left1 = memory[a+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let result = left &* UInt16(right)
                return rewrite(.storeImmediate16(c, Int(result)))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .storeImmediate(let address, let value):
            if memory[address] == UInt8(value) {
                return .nop
            } else {
                memory[address] = UInt8(value)
                return instruction
            }
            
        case .storeImmediate16(let address, let value):
            if (memory[address+0] == UInt8((value>>8)&0xff)) && (memory[address+1] == UInt8(value&0xff)) {
                return .nop
            } else {
                memory[address+0] = UInt8((value>>8)&0xff)
                memory[address+1] = UInt8(value&0xff)
                return instruction
            }
            
        case .storeImmediateBytes(let address, let bytes):
            var doesAlreadyContainValue = true
            for i in 0..<bytes.count {
                if memory[address+i] != bytes[i] {
                    doesAlreadyContainValue = false
                    break
                }
            }
            if doesAlreadyContainValue {
                return .nop
            } else {
                for i in 0..<bytes.count {
                    memory[address+i] = bytes[i]
                }
                return instruction
            }
            
        case .storeImmediateBytesIndirect(let dstPtr, let bytes):
            if let dst0 = memory[dstPtr+0], let dst1 = memory[dstPtr+1] {
                let dst = (UInt16(dst0)<<8) + UInt16(dst1)
                return rewrite(.storeImmediateBytes(Int(dst), bytes))
            } else {
                invalidateAllOfMemory()
                return instruction
            }
            
        case .add(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = UInt8(left) &+ UInt8(right)
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .add16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = left &+ right
                return rewrite(.storeImmediate16(c, Int(result)))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .sub(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = UInt8(left) &- UInt8(right)
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .sub16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = left &- right
                return rewrite(.storeImmediate16(c, Int(result)))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .mul(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = UInt8(left) &* UInt8(right)
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .mul16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = left &* right
                return rewrite(.storeImmediate16(c, Int(result)))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .div(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = UInt8(left) / UInt8(right)
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .div16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = left / right
                return rewrite(.storeImmediate16(c, Int(result)))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .mod(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = UInt8(left) % UInt8(right)
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .mod16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = left % right
                return rewrite(.storeImmediate16(c, Int(result)))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .eq(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = boolAsInt(UInt8(left) == UInt8(right))
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .eq16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = boolAsInt(left == right)
                return rewrite(.storeImmediate(c, result))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .ne(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = boolAsInt(UInt8(left) != UInt8(right))
                return rewrite(.storeImmediate(c, result))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .ne16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = boolAsInt(left != right)
                return rewrite(.storeImmediate(c, result))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .lt(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = boolAsInt(UInt8(left) < UInt8(right))
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .lt16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = boolAsInt(left < right)
                return rewrite(.storeImmediate(c, result))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .gt(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = boolAsInt(UInt8(left) > UInt8(right))
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .gt16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = boolAsInt(left > right)
                return rewrite(.storeImmediate(c, result))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .le(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = boolAsInt(UInt8(left) <= UInt8(right))
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .le16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = boolAsInt(left <= right)
                return rewrite(.storeImmediate(c, result))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .ge(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = boolAsInt(UInt8(left) >= UInt8(right))
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .ge16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = boolAsInt(left >= right)
                return rewrite(.storeImmediate(c, result))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .and(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = UInt8(left) & UInt8(right)
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .and16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = left & right
                return rewrite(.storeImmediate16(c, Int(result)))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .or(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = UInt8(left) | UInt8(right)
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .or16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = left | right
                return rewrite(.storeImmediate16(c, Int(result)))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .xor(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = UInt8(left) ^ UInt8(right)
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .xor16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = left ^ right
                return rewrite(.storeImmediate16(c, Int(result)))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .lsl(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = UInt8(left) << UInt8(right)
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .lsl16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = left << right
                return rewrite(.storeImmediate16(c, Int(result)))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .lsr(let c, let a, let b):
            if let left = memory[a], let right = memory[b] {
                let result = UInt8(left) >> UInt8(right)
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .lsr16(let c, let a, let b):
            if let left0 = memory[a+0], let left1 = memory[a+1], let right0 = memory[b+0], let right1 = memory[b+1] {
                let left = UInt16(left0)<<8 + UInt16(left1)
                let right = UInt16(right0)<<8 + UInt16(right1)
                let result = left >> right
                return rewrite(.storeImmediate16(c, Int(result)))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .neg(let c, let a):
            if let val = memory[a] {
                let result = ~UInt8(val)
                return rewrite(.storeImmediate(c, Int(result)))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .neg16(let c, let a):
            if let hi = memory[a+0], let lo = memory[a+1] {
                let val = UInt16(hi)<<8 + UInt16(lo)
                let result = ~val
                return rewrite(.storeImmediate16(c, Int(result)))
            }
            invalidateMemory(c, 2)
            return instruction
            
        case .not(let c, let a):
            if let val = memory[a] {
                let result = boolAsInt(val == 0)
                return rewrite(.storeImmediate(c, result))
            }
            invalidateMemory(c, 1)
            return instruction
            
        case .copyWordZeroExtend(let dst, let src):
            switch (memory[dst+0], memory[dst+1], memory[src]) {
            case (.some(0), nil, .some(let imm)):
                return .storeImmediate(dst+1, Int(imm))
            case (nil, .some(let a), .some(let b)):
                if a == b {
                    return .storeImmediate(dst+0, 0)
                }
            case (.some(let dst0), .some(let dst1), .some(let src)):
                if dst0 == 0 && dst1 == src {
                    return .nop
                }
            default:
                break
            }
            memory[dst+0] = 0
            memory[dst+1] = memory[src]
            return instruction
            
        case .copyWords(let dst, let src, let n):
            if isContentsOfMemoryKnown(src, n) {
                var doesDestinationAlreadyContainTheValue = true
                for i in 0..<n {
                    if let valueAtDestination = memory[dst+i], let valueAtSource = memory[src+i] {
                        if valueAtDestination != valueAtSource {
                            doesDestinationAlreadyContainTheValue = false
                            break
                        }
                    } else {
                        doesDestinationAlreadyContainTheValue = false
                        break
                    }
                }
                if doesDestinationAlreadyContainTheValue {
                    return .nop
                } else {
                    switch n {
                    case 1:
                        let value = UInt8(memory[src]!)
                        return rewrite(.storeImmediate(dst, Int(value)))
                    case 2:
                        let hi = UInt16(memory[src+0]!)
                        let lo = UInt16(memory[src+1]!)
                        let value = (hi<<8) + lo
                        return rewrite(.storeImmediate16(dst, Int(value)))
                    default:
                        let bytes = contentsOfMemory(src, n)
                        return rewrite(.storeImmediateBytes(dst, bytes))
                    }
                }
            } else {
                invalidateMemory(dst, n)
                return instruction
            }
            
        case .copyWordsIndirectSource(let dst, let srcPtr, let n):
            if let src0 = memory[srcPtr+0], let src1 = memory[srcPtr+1] {
                let src = (UInt16(src0)<<8) + UInt16(src1)
                return rewrite(.copyWords(dst, Int(src), n))
            } else {
                invalidateMemory(dst, n)
                return instruction
            }
            
        case .copyWordsIndirectDestination(let dstPtr, let src, let n):
            if let dst0 = memory[dstPtr+0], let dst1 = memory[dstPtr+1] {
                let dst = (UInt16(dst0)<<8) + UInt16(dst1)
                return rewrite(.copyWords(Int(dst), src, n))
            } else {
                if n<=2 && isContentsOfMemoryKnown(src, n) {
                    let bytes = contentsOfMemory(src, n)
                    return .storeImmediateBytesIndirect(dstPtr, bytes)
                } else {
                    invalidateAllOfMemory()
                    return instruction
                }
            }
            
        case .copyWordsIndirectDestinationIndirectSource(let dstPtr, let srcPtr, let n):
            if let dst0 = memory[dstPtr+0], let dst1 = memory[dstPtr+1] {
                let dst = (UInt16(dst0)<<8) + UInt16(dst1)
                return rewrite(.copyWordsIndirectSource(Int(dst), srcPtr, n))
            } else if let src0 = memory[srcPtr+0], let src1 = memory[srcPtr+1] {
                let src = (UInt16(src0)<<8) + UInt16(src1)
                return rewrite(.copyWordsIndirectDestination(dstPtr, Int(src), n))
            } else {
                invalidateAllOfMemory()
                return instruction
            }
            
        case .copyLabel(let dst, _):
            // We can't know the label value at this stage in the compile.
            invalidateMemory(dst, 2)
            return instruction
            
        default:
            return instruction
        }
    }
    
    fileprivate func boolAsInt(_ b: Bool) -> Int {
        return (b) ? 1 : 0
    }
    
    fileprivate func invalidateMemory(_ dst: Int, _ n: Int) {
        for i in 0..<n {
            memory[dst+i] = nil
        }
    }
    
    fileprivate func isContentsOfMemoryKnown(_ src: Int, _ n: Int) -> Bool {
        for i in 0..<n {
            if nil == memory[src+i] {
                return false
            }
        }
        return true
    }
    
    fileprivate func contentsOfMemory(_ src: Int, _ n: Int) -> [UInt8] {
        return memory[src..<(src+n)].map {
            UInt8($0!)
        }
    }
    
    fileprivate func invalidateAllOfMemory() {
        for i in 0..<memory.count {
            memory[i] = nil
        }
    }
}
