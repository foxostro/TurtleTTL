//
//  SymbolTable.swift
//  SnapCore
//
//  Created by Andrew Fox on 9/1/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import TurtleCompilerToolbox
import TurtleCore

public indirect enum SymbolType: Equatable, Hashable, CustomStringConvertible {
    case constInt(Int), constBool(Bool)
    case u16, u8, bool, void
    case function(FunctionType)
    case array(count: Int?, elementType: SymbolType)
    case dynamicArray(elementType: SymbolType)
    case structType(StructType)
    case pointer(SymbolType)
    
    public func unwrapFunctionType() -> FunctionType {
        switch self {
        case .function(let typ):
            return typ
        default:
            abort()
        }
    }
    
    public func unwrapStructType() -> StructType {
        switch self {
        case .structType(let typ):
            return typ
        default:
            abort()
        }
    }
    
    public var isBooleanType: Bool {
        switch self {
        case .bool, .constBool:
            return true
        default:
            return false
        }
    }
    
    public var isArithmeticType: Bool {
        switch self {
        case .u8, .u16, .constInt:
            return true
        default:
            return false
        }
    }
    
    public var sizeof: Int {
        switch self {
        case .constInt, .constBool, .void, .function:
            return 0
        case .u8, .bool:
            return 1
        case .u16:
            return 2
        case .array(count: let count, elementType: let elementType):
            return (count ?? 0) * elementType.sizeof
        case .dynamicArray(elementType: _):
            return 4
        case .structType(let typ):
            return typ.sizeof
        case .pointer:
            return 2
        }
    }
    
    public var arrayCount: Int? {
        switch self {
        case .array(count: let count, elementType: _):
            return count
        default:
            abort()
        }
    }
    
    public var arrayElementType: SymbolType {
        switch self {
        case .array(count: _, elementType: let elementType):
            return elementType
        case .dynamicArray(elementType: let elementType):
            return elementType
        default:
            abort()
        }
    }
    
    public var description: String {
        switch self {
        case .constInt:
            return "const int"
        case .constBool:
            return "const bool"
        case .void:
            return "void"
        case .u16:
            return "u16"
        case .u8:
            return "u8"
        case .bool:
            return "bool"
        case .array(count: let count, elementType: let elementType):
            if let count = count {
                return "[\(count)]\(elementType)"
            } else {
                return "[_]\(elementType)"
            }
        case .dynamicArray(elementType: let elementType):
            return "[]\(elementType)"
        case .function(let functionType):
            let argumentTypeDescription = functionType.arguments.compactMap({"\($0.argumentType)"}).joined(separator: ", ")
            let result = "(\(argumentTypeDescription)) -> \(functionType.returnType)"
            return result
        case .structType(let typ):
            return "\(typ.name)"
        case .pointer(let pointee):
            return "*\(pointee)"
        }
    }
}

public enum SymbolStorage: Equatable {
    case staticStorage, stackStorage
}

public class FunctionType: NSObject {
    public class Argument: NSObject {
        public let name: String
        public let argumentType: SymbolType
        public let isMutable: Bool
        
        public init(name: String, type: SymbolType, isMutable: Bool = false) {
            self.name = name
            self.argumentType = type
            self.isMutable = isMutable
        }
        
        public static func ==(lhs: Argument, rhs: Argument) -> Bool {
            return lhs.isEqual(rhs)
        }
        
        public override func isEqual(_ rhs: Any?) -> Bool {
            guard rhs != nil else {
                return false
            }
            guard type(of: rhs!) == type(of: self) else {
                return false
            }
            guard let rhs = rhs as? Argument else {
                return false
            }
            guard name == rhs.name else {
                return false
            }
            guard argumentType == rhs.argumentType else {
                return false
            }
            guard isMutable == rhs.isMutable else {
                return false
            }
            return true
        }
        
        public override var hash: Int {
            var hasher = Hasher()
            hasher.combine(name)
            hasher.combine(argumentType)
            hasher.combine(isMutable)
            return hasher.finalize()
        }
    }
    
    public let returnType: SymbolType
    public let arguments: [Argument]
    
    public init(returnType: SymbolType, arguments: [Argument]) {
        self.returnType = returnType
        self.arguments = arguments
    }
    
    public override var description: String {
        return "(\(makeArgumentsDescription())) -> \(returnType)"
    }
    
    public func makeArgumentsDescription() -> String {
        let result = arguments.map({"\($0.name) : \($0.argumentType)"}).joined(separator: ", ")
        return result
    }
    
    public static func ==(lhs: FunctionType, rhs: FunctionType) -> Bool {
        return lhs.isEqual(rhs)
    }
    
    public override func isEqual(_ rhs: Any?) -> Bool {
        guard rhs != nil else { return false }
        guard type(of: rhs!) == type(of: self) else { return false }
        guard let rhs = rhs as? FunctionType else { return false }
        guard returnType == rhs.returnType else { return false }
        guard arguments == rhs.arguments else { return false }
        return true
    }
    
    public override var hash: Int {
        var hasher = Hasher()
        hasher.combine(returnType)
        hasher.combine(arguments)
        return hasher.finalize()
    }
}

public class StructType: NSObject {
    public let name: String
    public let symbols: SymbolTable
    
    public init(name: String, symbols: SymbolTable) {
        self.name = name
        self.symbols = symbols
    }
    
    public override var description: String {
        return """
struct \(name) {
    \(makeMembersDescription())
}
"""
    }
    
    public func makeMembersDescription() -> String {
        var members: [String] = []
        for (name, symbol) in symbols.symbolTable {
            members.append("\(name): \(symbol.type)")
        }
        let result = members.map({"\t\($0)"}).joined(separator: ",\n")
        return result
    }
    
    public var sizeof: Int {
        var accum = 0
        for (_, symbol) in symbols.symbolTable {
            accum += symbol.type.sizeof
        }
        return accum
    }
    
    public static func ==(lhs: StructType, rhs: StructType) -> Bool {
        return lhs.isEqual(rhs)
    }
    
    public override func isEqual(_ rhs: Any?) -> Bool {
        guard rhs != nil else {
            return false
        }
        guard type(of: rhs!) == type(of: self) else {
            return false
        }
        guard let rhs = rhs as? StructType else {
            return false
        }
        guard name == rhs.name else {
            return false
        }
        guard symbols == rhs.symbols else {
            return false
        }
        return true
    }
    
    public override var hash: Int {
        var hasher = Hasher()
        hasher.combine(name)
        hasher.combine(symbols)
        return hasher.finalize()
    }
}

public struct Symbol: Equatable {
    public let type: SymbolType
    public let offset: Int
    public let isMutable: Bool
    public let storage: SymbolStorage
    
    public init(type: SymbolType, offset: Int, isMutable: Bool, storage: SymbolStorage = .staticStorage) {
        self.type = type
        self.offset = offset
        self.isMutable = isMutable
        self.storage = storage
    }
}

// Maps a name to symbol information.
public class SymbolTable: NSObject {
    public private(set) var symbolTable: [String:Symbol]
    private var typeTable: [String:SymbolType]
    public let parent: SymbolTable?
    public var storagePointer: Int
    public var enclosingFunctionType: FunctionType? = nil
    public var enclosingFunctionName: String? = nil
    public var stackFrameIndex: Int
    
    public convenience init(_ dict: [String:Symbol] = [:]) {
        self.init(parent: nil, dict: dict)
    }
    
    public init(parent p: SymbolTable?, dict: [String:Symbol] = [:], typeDict: [String:SymbolType] = [:]) {
        parent = p
        symbolTable = dict
        typeTable = typeDict
        storagePointer = p?.storagePointer ?? 0
        enclosingFunctionType = p?.enclosingFunctionType
        enclosingFunctionName = p?.enclosingFunctionName
        stackFrameIndex = p?.stackFrameIndex ?? 0
    }
    
    public func exists(identifier: String) -> Bool {
        if nil == symbolTable[identifier] {
            return parent?.exists(identifier: identifier) ?? false
        }
        return true
    }
    
    public func existsAsType(identifier: String) -> Bool {
        if nil == typeTable[identifier] {
            return parent?.existsAsType(identifier: identifier) ?? false
        }
        return true
    }
    
    public func existsAndCannotBeShadowed(identifier: String) -> Bool {
        guard let resolution = maybeResolveWithScopeDepth(identifier: identifier) else {
            return false
        }
        return resolution.1 == 0
    }
    
    public func bind(identifier: String, symbol: Symbol) {
        symbolTable[identifier] = symbol
    }
    
    public func bind(identifier: String, symbolType: SymbolType) {
        typeTable[identifier] = symbolType
    }
    
    public func resolve(identifier: String) throws -> Symbol {
        return try resolve(sourceAnchor: nil, identifier: identifier)
    }
    
    public func maybeResolve(identifier: String) -> Symbol? {
        let maybeResolution: (Symbol, Int)? = maybeResolveWithScopeDepth(sourceAnchor: nil, identifier: identifier)
        return maybeResolution?.0
    }
    
    public func resolve(sourceAnchor: SourceAnchor?, identifier: String) throws -> Symbol {
        guard let resolution = maybeResolveWithStackFrameDepth(sourceAnchor: sourceAnchor, identifier: identifier) else {
            throw CompilerError(sourceAnchor: sourceAnchor,
                                message: "use of unresolved identifier: `\(identifier)'")
        }
        return resolution.0
    }
    
    public func resolveWithStackFrameDepth(sourceAnchor: SourceAnchor?, identifier: String) throws -> (Symbol, Int) {
        guard let resolution = maybeResolveWithStackFrameDepth(sourceAnchor: sourceAnchor, identifier: identifier) else {
            throw CompilerError(sourceAnchor: sourceAnchor,
                                message: "use of unresolved identifier: `\(identifier)'")
        }
        return resolution
    }
    
    private func maybeResolveWithStackFrameDepth(sourceAnchor: SourceAnchor?, identifier: String) -> (Symbol, Int)? {
        if let symbol = symbolTable[identifier] {
            return (symbol, stackFrameIndex)
        }
        return parent?.maybeResolveWithStackFrameDepth(sourceAnchor: sourceAnchor, identifier: identifier)
    }
    
    public func resolveWithScopeDepth(sourceAnchor: SourceAnchor? = nil, identifier: String) throws -> (Symbol, Int) {
        guard let resolution = maybeResolveWithScopeDepth(sourceAnchor: sourceAnchor, identifier: identifier) else {
            throw CompilerError(sourceAnchor: sourceAnchor,
                                message: "use of unresolved identifier: `\(identifier)'")
        }
        return resolution
    }
    
    private func maybeResolveWithScopeDepth(sourceAnchor: SourceAnchor? = nil, identifier: String) -> (Symbol, Int)? {
        if let symbol = symbolTable[identifier] {
            return (symbol, 0)
        } else if let parentResolution = parent?.maybeResolveWithScopeDepth(sourceAnchor: sourceAnchor, identifier: identifier) {
            return (parentResolution.0, parentResolution.1 + 1)
        }
        return nil
    }
    
    public func allEnclosingFunctionNames() -> [String] {
        if let enclosingFunctionName = enclosingFunctionName {
            if let parent = parent {
                return parent.allEnclosingFunctionNames() + [enclosingFunctionName]
            } else {
                return [enclosingFunctionName]
            }
        } else {
            return []
        }
    }
    
    public func resolveType(identifier: String) throws -> SymbolType {
        return try resolveType(sourceAnchor: nil, identifier: identifier)
    }
    
    public func resolveType(sourceAnchor: SourceAnchor?, identifier: String) throws -> SymbolType {
        guard let resolution = maybeResolveTypeWithStackFrameDepth(sourceAnchor: sourceAnchor, identifier: identifier) else {
            throw CompilerError(sourceAnchor: sourceAnchor,
                                message: "use of undeclared type `\(identifier)'")
        }
        return resolution.0
    }
    
    private func maybeResolveTypeWithStackFrameDepth(sourceAnchor: SourceAnchor?, identifier: String) -> (SymbolType, Int)? {
        if let symbolType = typeTable[identifier] {
            return (symbolType, stackFrameIndex)
        }
        return parent?.maybeResolveTypeWithStackFrameDepth(sourceAnchor: sourceAnchor, identifier: identifier)
    }
    
    public override func isEqual(_ rhs: Any?) -> Bool {
        guard rhs != nil else {
            return false
        }
        guard type(of: rhs!) == type(of: self) else {
            return false
        }
        guard let rhs = rhs as? SymbolTable else {
            return false
        }
        guard symbolTable == rhs.symbolTable else {
            return false
        }
        guard typeTable == rhs.typeTable else {
            return false
        }
        return true
    }
}
