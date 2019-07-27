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
}
