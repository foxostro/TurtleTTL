//
//  InstructionDecoder.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class InstructionDecoder: NSObject {
    let size: Int
    var contents: [UInt16]
    
    override init() {
        size = 131072
        contents = Array<UInt16>();
        contents.reserveCapacity(size)
        for _ in 0..<size {
            contents.append(0)
        }
    }
}
