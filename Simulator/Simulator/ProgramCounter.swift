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
    
    func increment() {
        contents += 1
    }
}
