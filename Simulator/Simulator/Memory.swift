//
//  Memory.swift
//  Simulator
//
//  Created by Andrew Fox on 7/29/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class Memory: NSObject {
    let size:Int
    var contents: [UInt8]
    
    var data: Data {
        let data = NSMutableData()
        for value in contents {
            data.append(Data([value]))
        }
        return data as Data
    }
    
    subscript(i:Int) -> UInt8 {
        get {
            return contents[i]
        }
        set(newValue) {
            contents[i] = newValue
        }
    }
    
    required init(size: Int) {
        self.size = size
        contents = [UInt8]()
        contents.reserveCapacity(size)
        for _ in 0..<size {
            contents.append(0)
        }
        super.init()
    }
    
    func write(url: URL) throws {
        try data.write(to: url)
    }
}
