//
//  RAM.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class RAM: NSObject {
    let size: Int = 32768
    var contents: [UInt8]
    override init() {
        contents = Array<UInt8>()
        contents.reserveCapacity(size)
        for _ in 0..<size {
            contents.append(0)
        }
    }
}
