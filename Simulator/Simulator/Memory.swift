//
//  Memory.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class Memory: NSObject {
    let size: Int
    var contents: [UInt8]
    init(size: Int) {
        self.size = size
        contents = Array<UInt8>()
        contents.reserveCapacity(size)
        for _ in 0..<size {
            contents.append(0)
        }
    }
}
