//
//  InstructionROM.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class InstructionROM: NSObject {
    let size: Int = 32768
    var contents: [UInt16]
    override init() {
        contents = Array<UInt16>()
        contents.reserveCapacity(size)
        for _ in 0..<size {
            contents.append(0)
        }
    }
    
    func store(address:UInt16, value:UInt16) {
        contents[Int(address)] = value
    }
    
    func store(address:Int, value:UInt16) {
        store(address: UInt16(address), value: value)
    }
    
    func load(address:UInt16) -> UInt16 {
        return contents[Int(address)]
    }
    
    func load(address:Int) -> UInt16 {
        return load(address: UInt16(address))
    }
}
