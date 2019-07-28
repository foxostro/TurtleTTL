//
//  Flags.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class Flags: NSObject {
    var carryFlag:Int = 0
    var equalFlag:Int = 0
    override var description: String {
        return String(format:"{carryFlag: %d, equalFlag: %d}", carryFlag, equalFlag)
    }
}

