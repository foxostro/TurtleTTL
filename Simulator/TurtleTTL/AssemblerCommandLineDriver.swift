//
//  AssemblerCommandLineDriver.swift
//  TurtleTTL
//
//  Created by Andrew Fox on 8/1/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa
import Darwin

public class AssemblerCommandLineDriver: NSObject {
    public struct AssemblerCommandLineDriverError: Error {
        public let message: String
        
        public init(format: String, _ args: CVarArg...) {
            message = String(format:format, arguments:args)
        }
    }
    
    public var status: Int32 = 1
    let arguments: [String]
    
    public required init(withArguments arguments: [String]) {
        self.arguments = arguments
    }
    
    public func run() {
        do {
            try tryRun()
        } catch let error as AssemblerCommandLineDriverError {
            reportError(withMessage: error.message)
        } catch {
            reportError(withMessage: error.localizedDescription)
        }
    }
    
    func reportError(withMessage message: String) {
        fputs("Error: " + message + "\n", stderr)
    }
    
    func tryRun() throws {
        try validateArguments()
        status = 0
    }
    
    func validateArguments() throws {
        if (arguments.count != 2) {
            throw AssemblerCommandLineDriverError(format: "Expected two arguments, got %d", arguments.count)
        }
    }
}
