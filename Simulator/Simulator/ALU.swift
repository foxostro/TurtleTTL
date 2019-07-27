//
//  ALU.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class ALU: NSObject {
    var a:UInt8 = 0
    var b:UInt8 = 0
    var s = 0
    var mode = 0
    var carryIn = 0 // active-low
    private(set) var carryFlag = 0
    private(set) var equalFlag = 0
    private(set) var result:UInt8 = 0
    
    // The actual hardware will update outputs as inputs change. However, in
    // the simulator, the outputs only update when the update method is called.
    func update() {
        // for now, hard code the operation
        result = a + b
        carryFlag = (result < (Int(a) + Int(b))) ? 0 : 1
        equalFlag = (result == 255) ? 1 : 0
    }
}
