//
//  ConsoleLogger.swift
//  TurtleTTL
//
//  Created by Andrew Fox on 2/20/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import Cocoa

public class ConsoleLogger: NSObject, Logger {
    public func append(_ format: String, _ args: CVarArg...) {
        let message = String(format:format, arguments:args)
        NSLog(message)
    }
}