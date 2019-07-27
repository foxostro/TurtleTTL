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
    var s:UInt8 = 0
    var mode = 0
    var carryIn = 0 // active-low
    private(set) var carryFlag = 0
    private(set) var equalFlag = 0
    private(set) var result:UInt8 = 0
    
    // The actual hardware will update outputs as inputs change. However, in
    // the simulator, the outputs only update when the update method is called.
    func update() {
        let lower181 = Chip74x181()
        lower181.a = (a & 0b1111)
        lower181.b = (b & 0b1111)
        lower181.s = s
        lower181.mode = mode
        lower181.carryIn = carryIn
        lower181.update()
        
        let upper181 = Chip74x181()
        upper181.a = (a & 0b11110000) >> 4
        upper181.b = (b & 0b11110000) >> 4
        upper181.s = s
        upper181.mode = mode
        upper181.carryIn = lower181.carryOut
        upper181.update()
        
        result = lower181.result | (upper181.result << 4)
        equalFlag = lower181.equalOut & upper181.equalOut
        carryFlag = upper181.carryOut
    }
}
