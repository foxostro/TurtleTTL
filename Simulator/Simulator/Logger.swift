//
//  Logger.swift
//  Simulator
//
//  Created by Andrew Fox on 7/29/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class Logger: NSObject {
    var onLog:(String)->Void = {(String) in
    }
    
    func log(_ format: String, _ args: CVarArg...) {
        onLog(String(format:format, arguments:args))
    }
}
