//
//  SnapCompilerFrontEnd.swift
//  SnapCore
//
//  Created by Andrew Fox on 5/17/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import TurtleCore
import TurtleCompilerToolbox

public class SnapCompilerFrontEnd: NSObject {
    public var instructions: [Instruction] = []
    
    public private(set) var errors: [CompilerError] = []
    public var hasError:Bool {
        return errors.count != 0
    }
    
    public func compile(_ text: String) {
        return compile(program: text, base: 0x0000)
    }
    
    public func compile(program text: String, base: Int) {
        instructions = []
        errors = []
        // TODO: STUB
    }
    
    public func makeOmnibusError(fileName: String?, errors: [CompilerError]) -> CompilerError {
        var message = ""
        
        for error in errors {
            if fileName != nil {
                message += fileName! + ":"
            }
            if let lineNumber = error.line {
                message += String(lineNumber) + ": "
            }
            message += String(format: "error: %@\n", error.message)
        }
        
        if errors.count == 1 {
            message += String(format: "1 error generated\n")
        } else {
            message += String(format: "%d errors generated\n", errors.count)
        }
        
        return CompilerError(message: message)
    }
}
