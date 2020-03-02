//
//  AtomicBooleanFlag.swift
//  TurtleTTL
//
//  Created by Andrew Fox on 3/1/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import Cocoa

public class AtomicBooleanFlag: NSObject {
    fileprivate var internalValue: Bool
    
    public var value: Bool {
        get {
            objc_sync_enter(self)
            defer { objc_sync_exit(self) }
            return internalValue
        }
        set (newValue) {
            objc_sync_enter(self)
            defer { objc_sync_exit(self) }
            internalValue = newValue
        }
    }
    
    public init(_ initialValue: Bool = false) {
        internalValue = initialValue
    }
}
