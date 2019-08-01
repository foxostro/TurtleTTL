//
//  AssemblerBackEnd.swift
//  Simulator
//
//  Created by Andrew Fox on 7/31/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class AssemblerBackEnd: NSObject {
//    typealias Command = () throws -> ()
    var instructions = [Instruction]()
    private(set) var isAssembling: Bool = false
    let codeGenerator: CodeGenerator
    
    required init(codeGenerator: CodeGenerator) {
        self.codeGenerator = codeGenerator
        super.init()
    }
    
    // Begin emitting instructions.
    func begin() {
        isAssembling = true
        codeGenerator.begin()
    }
    
    // No Operation -- Do nothing
    func nop() {
        assert(isAssembling)
        codeGenerator.nop()
    }
    
    // End emitting instructions.
    // After this call, the client can copy instructions out of "instructions".
    func end() {
        isAssembling = false
        instructions = codeGenerator.instructions
    }
}
