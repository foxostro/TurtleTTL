//
//  SnapDebugInfo.swift
//  SnapCore
//
//  Created by Andrew Fox on 9/25/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import TurtleCore
import TurtleCompilerToolbox

public class SnapDebugInfo: ProgramDebugInfo {
    private var mapCrackleInstructionToSource: [SourceAnchor?] = []
    private var mapAssemblyInstructionToSource: [SourceAnchor?] = []
    
    private var mapAssemblyInstructionToCrackleInstruction: [CrackleInstruction?] = []
    private var mapProgramCounterToCrackleInstruction: [CrackleInstruction?] = []
    
    private var mapCrackleInstructionToSymbols: [SymbolTable?] = []
    private var mapAssemblyInstructionToSymbols: [SymbolTable?] = []
    private var mapProgramCounterToSymbols: [SymbolTable?] = []
    
    public func bind(crackleInstructionIndex ci: Int, sourceAnchor: SourceAnchor?) {
        assert(ci >= 0)
        if ci < mapCrackleInstructionToSource.count {
            mapCrackleInstructionToSource[ci] = sourceAnchor
        } else {
            let last = mapCrackleInstructionToSource.last as? SourceAnchor
            for _ in mapCrackleInstructionToSource.count..<ci {
                mapCrackleInstructionToSource.append(last)
            }
            mapCrackleInstructionToSource.append(sourceAnchor)
        }
    }
    
    public func lookupSourceAnchor(crackleInstructionIndex ci: Int) -> SourceAnchor? {
        assert(ci >= 0)
        guard ci < mapCrackleInstructionToSource.count else {
            return nil
        }
        let sourceAnchor = mapCrackleInstructionToSource[ci]
        return sourceAnchor
    }
    
    public func bind(assemblyInstructionIndex ai: Int, sourceAnchor: SourceAnchor?) {
        assert(ai >= 0)
        if ai < mapAssemblyInstructionToSource.count {
            mapAssemblyInstructionToSource[ai] = sourceAnchor
        } else {
            let last = mapAssemblyInstructionToSource.last as? SourceAnchor
            for _ in mapAssemblyInstructionToSource.count..<ai {
                mapAssemblyInstructionToSource.append(last)
            }
            mapAssemblyInstructionToSource.append(sourceAnchor)
        }
    }
    
    public func lookupSourceAnchor(assemblyInstructionIndex ci: Int) -> SourceAnchor? {
        assert(ci >= 0)
        guard ci < mapAssemblyInstructionToSource.count else {
            return nil
        }
        let sourceAnchor = mapAssemblyInstructionToSource[ci]
        return sourceAnchor
    }
    
    public func bind(assemblyInstructionIndex ai: Int, crackleInstruction: CrackleInstruction?) {
        assert(ai >= 0)
        if ai < mapAssemblyInstructionToCrackleInstruction.count {
            mapAssemblyInstructionToCrackleInstruction[ai] = crackleInstruction
        } else {
            let last = mapAssemblyInstructionToCrackleInstruction.last as? CrackleInstruction
            for _ in mapAssemblyInstructionToCrackleInstruction.count..<ai {
                mapAssemblyInstructionToCrackleInstruction.append(last)
            }
            mapAssemblyInstructionToCrackleInstruction.append(crackleInstruction)
        }
    }
    
    public func lookupCrackleInstruction(assemblyInstructionIndex ai: Int) -> CrackleInstruction? {
        assert(ai >= 0)
        guard ai < mapAssemblyInstructionToCrackleInstruction.count else {
            return nil
        }
        let crackleInstruction = mapAssemblyInstructionToCrackleInstruction[ai]
        return crackleInstruction
    }
    
    public func bind(pc: Int, crackleInstruction: CrackleInstruction?) {
        assert(pc >= 0 && pc < 65536)
        if pc < mapProgramCounterToCrackleInstruction.count {
            mapProgramCounterToCrackleInstruction[pc] = crackleInstruction
        } else {
            let last = mapProgramCounterToCrackleInstruction.last as? CrackleInstruction
            for _ in mapProgramCounterToCrackleInstruction.count..<pc {
                mapProgramCounterToCrackleInstruction.append(last)
            }
            mapProgramCounterToCrackleInstruction.append(crackleInstruction)
        }
    }
    
    public func lookupCrackleInstruction(pc: Int) -> CrackleInstruction? {
        assert(pc >= 0 && pc < 65536)
        guard pc < mapProgramCounterToCrackleInstruction.count else {
            return nil
        }
        let crackleInstruction = mapProgramCounterToCrackleInstruction[pc]
        return crackleInstruction
    }
    
    public func bind(crackleInstructionIndex: Int, symbols: SymbolTable?) {
        assert(crackleInstructionIndex >= 0)
        if crackleInstructionIndex < mapCrackleInstructionToSymbols.count {
            mapCrackleInstructionToSymbols[crackleInstructionIndex] = symbols
        } else {
            let last = mapCrackleInstructionToSymbols.last as? SymbolTable
            for _ in mapCrackleInstructionToSymbols.count..<crackleInstructionIndex {
                mapCrackleInstructionToSymbols.append(last)
            }
            mapCrackleInstructionToSymbols.append(symbols)
        }
    }
    
    public func lookupSymbols(crackleInstructionIndex: Int) -> SymbolTable? {
        assert(crackleInstructionIndex >= 0)
        guard crackleInstructionIndex < mapCrackleInstructionToSymbols.count else {
            return nil
        }
        let symbols = mapCrackleInstructionToSymbols[crackleInstructionIndex]
        return symbols
    }
    
    public func bind(assemblyInstructionIndex: Int, symbols: SymbolTable?) {
        assert(assemblyInstructionIndex >= 0)
        if assemblyInstructionIndex < mapAssemblyInstructionToSymbols.count {
            mapAssemblyInstructionToSymbols[assemblyInstructionIndex] = symbols
        } else {
            let last = mapAssemblyInstructionToSymbols.last as? SymbolTable
            for _ in mapAssemblyInstructionToSymbols.count..<assemblyInstructionIndex {
                mapAssemblyInstructionToSymbols.append(last)
            }
            mapAssemblyInstructionToSymbols.append(symbols)
        }
    }
    
    public func lookupSymbols(assemblyInstructionIndex: Int) -> SymbolTable? {
        assert(assemblyInstructionIndex >= 0)
        guard assemblyInstructionIndex < mapAssemblyInstructionToSymbols.count else {
            return nil
        }
        let symbols = mapAssemblyInstructionToSymbols[assemblyInstructionIndex]
        return symbols
    }
    
    public func bind(pc: Int, symbols: SymbolTable?) {
        assert(pc >= 0 && pc < 65536)
        if pc < mapProgramCounterToSymbols.count {
            mapProgramCounterToSymbols[pc] = symbols
        } else {
            let last = mapProgramCounterToSymbols.last as? SymbolTable
            for _ in mapProgramCounterToSymbols.count..<pc {
                mapProgramCounterToSymbols.append(last)
            }
            mapProgramCounterToSymbols.append(symbols)
        }
    }
    
    public func lookupSymbols(pc: Int) -> SymbolTable? {
        assert(pc >= 0 && pc < 65536)
        guard pc < mapProgramCounterToSymbols.count else {
            return mapProgramCounterToSymbols[mapProgramCounterToSymbols.count - 1]
        }
        let symbols = mapProgramCounterToSymbols[pc]
        return symbols
    }
    
    public func generateMappingToProgramCounter(base: Int) {
        for i in 0..<mapAssemblyInstructionToSource.count {
            bind(pc: i+base, sourceAnchor: mapAssemblyInstructionToSource[i])
        }
        
        for i in 0..<mapAssemblyInstructionToCrackleInstruction.count {
            bind(pc: i+base, crackleInstruction: mapAssemblyInstructionToCrackleInstruction[i])
        }
        
        for i in 0..<mapAssemblyInstructionToSymbols.count {
            bind(pc: i+base, symbols: mapAssemblyInstructionToSymbols[i])
        }
    }
    
    public func lookupSymbol(pc: Int, identifier: String) -> Symbol? {
        return lookupSymbols(pc: pc)?.maybeResolve(identifier: identifier)
    }
}