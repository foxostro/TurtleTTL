//
//  AssemblerCodeGenPass.swift
//  TurtleTTL
//
//  Created by Andrew Fox on 8/22/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

// Takes an AST and performs a pass that does final code generation.
public class AssemblerCodeGenPass: NSObject, AbstractSyntaxTreeNodeVisitor {
    let codeGenerator: CodeGenerator
    var symbols: [String:Int]
    
    public required init(codeGenerator: CodeGenerator, symbols: [String:Int] = [:]) {
        self.codeGenerator = codeGenerator
        self.symbols = symbols
        super.init()
    }
    
    public func generate(_ root: AbstractSyntaxTreeNode) throws -> [Instruction] {
        codeGenerator.begin()
        try root.iterate {
            try $0.accept(visitor: self)
        }
        codeGenerator.end()
        return codeGenerator.instructions
    }
    
    public func visit(node: NOPNode) throws {
        self.codeGenerator.nop()
    }
    
    public func visit(node: CMPNode) throws {
        self.codeGenerator.cmp()
    }
    
    public func visit(node: HLTNode) throws {
        self.codeGenerator.hlt()
    }
    
    public func visit(node: JMPToLabelNode) throws {
        assert(node.identifier.type == .identifier)
        try self.setAddress(token: node.identifier)
        self.codeGenerator.jmp()
        self.codeGenerator.nop()
        self.codeGenerator.nop()
    }
    
    public func visit(node: JMPToAddressNode) throws {
        try self.setAddress(node.address)
        self.codeGenerator.jmp()
        self.codeGenerator.nop()
        self.codeGenerator.nop()
    }
    
    public func visit(node: JCToLabelNode) throws {
        assert(node.identifier.type == .identifier)
        try self.setAddress(token: node.identifier)
        self.codeGenerator.jc()
        self.codeGenerator.nop()
        self.codeGenerator.nop()
    }
    
    public func visit(node: JCToAddressNode) throws {
        try self.setAddress(node.address)
        self.codeGenerator.jc()
        self.codeGenerator.nop()
        self.codeGenerator.nop()
    }
    
    public func visit(node: ADDNode) throws {
        try self.codeGenerator.add(node.destination)
    }
    
    public func visit(node: LINode) throws {
        try self.codeGenerator.li(node.destination, token: node.immediate)
    }
    
    public func visit(node: MOVNode) throws {
        try self.codeGenerator.mov(node.destination, node.source)
    }
    
    public func visit(node: LabelDeclarationNode) throws {
        // do nothing
    }
    
    public func visit(node: LoadNode) throws {
        let lineNumber = node.sourceAddress.lineNumber
        let address = node.sourceAddress.literal as! Int
        if(address < 0 || address > 0xffff) {
            throw AssemblerError(line: lineNumber, format: "Address is invalid: 0x%x", address)
        }
        try self.setAddress(address)
        try self.codeGenerator.mov(node.destination, "M")
    }
    
    public func visit(node: StoreNode) throws {
        let lineNumber = node.destinationAddress.lineNumber
        let address = node.destinationAddress.literal as! Int
        if(address < 0 || address > 0xffff) {
            throw AssemblerError(line: lineNumber, format: "Address is invalid: 0x%x", address)
        }
        try self.setAddress(address)
        try self.codeGenerator.mov("M", node.source)
    }
    
    public func visit(node: StoreImmediateNode) throws {
        let lineNumber = node.destinationAddress.lineNumber
        let address = node.destinationAddress.literal as! Int
        if(address < 0 || address > 0xffff) {
            throw AssemblerError(line: lineNumber, format: "Address is invalid: 0x%x", address)
        }
        if(node.immediate < 0 || node.immediate > 0xff) {
            throw AssemblerError(line: lineNumber, format: "Immediate is invalid: 0x%x", node.immediate)
        }
        try self.setAddress(address)
        try self.codeGenerator.instruction(withMnemonic: "MOV M, C", immediate: node.immediate)
    }
    
    public func resolveSymbol(token identifier: Token) throws -> Int {
        assert(identifier.type == .identifier)
        let name = identifier.lexeme
        if let value = self.symbols[name] {
            return value
        }
        throw AssemblerError(line: identifier.lineNumber, format: "unrecognized symbol name: `%@'", name)
    }
    
    public func resolveSymbol(name: String) throws -> Int {
        if let value = self.symbols[name] {
            return value
        }
        throw AssemblerError(format: "unrecognized symbol name: `%@'", name)
    }
    
    func setAddress(_ address: Int) throws {
        if(address < 0 || address > 0xffff) {
            throw AssemblerError(format: "invalid address: 0x%x", address)
        }
        try self.codeGenerator.li("X", (address & 0xff00) >> 8)
        try self.codeGenerator.li("Y", (address & 0xff))
    }
    
    func setAddress(token identifier: Token) throws {
        assert(identifier.type == .identifier)
        let address = try self.resolveSymbol(token: identifier)
        try self.setAddress(address)
    }
}