//
//  ProgramCounter.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class ProgramCounter: NSObject {
    var contents: UInt16 = 0
    
    var stringValue: String {
        get {
            return String(contents, radix: 16)
        }
        set(newStringValue) {
            if let value = UInt16(newStringValue, radix: 16) {
                contents = value
            }
        }
    }
    
    func increment() {
        contents += 1
    }
}
