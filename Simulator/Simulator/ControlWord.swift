//
//  ControlWord.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class ControlWord: NSObject {
    var CO:Bool = false
    var J:Bool = false
    var YI:Bool = false
    var XI:Bool = false
    var YO:Bool = false
    var XO:Bool = false
    var MO:Bool = false
    var MI:Bool = false
    var EO:Bool = false
    var FI:Bool = false
    var AO:Bool = false
    var AI:Bool = false
    var BO:Bool = false
    var BI:Bool = false
    var DI:Bool = false
    var HLT:Bool = false
    
    var contents: UInt16 {
        get {
            var result: UInt16 = 0
            result +=  CO ? (1<<0) : 0
            result +=   J ? (1<<1) : 0
            result +=  YI ? (1<<2) : 0
            result +=  XI ? (1<<3) : 0
            result +=  YO ? (1<<4) : 0
            result +=  XO ? (1<<5) : 0
            result +=  MO ? (1<<6) : 0
            result +=  MI ? (1<<7) : 0
            result +=  EO ? (1<<8) : 0
            result +=  FI ? (1<<9) : 0
            result +=  AO ? (1<<10) : 0
            result +=  AI ? (1<<11) : 0
            result +=  BO ? (1<<12) : 0
            result +=  BI ? (1<<13) : 0
            result +=  DI ? (1<<14) : 0
            result += HLT ? (1<<15) : 0
            return result
        }
        set(contents) {
            CO  = (contents & (1<<0))  != 0
            J   = (contents & (1<<1))  != 0
            YI  = (contents & (1<<2))  != 0
            XI  = (contents & (1<<3))  != 0
            YO  = (contents & (1<<4))  != 0
            XO  = (contents & (1<<5))  != 0
            MO  = (contents & (1<<6))  != 0
            MI  = (contents & (1<<7))  != 0
            EO  = (contents & (1<<8))  != 0
            FI  = (contents & (1<<9))  != 0
            AO  = (contents & (1<<10)) != 0
            AI  = (contents & (1<<11)) != 0
            BO  = (contents & (1<<12)) != 0
            BI  = (contents & (1<<13)) != 0
            DI  = (contents & (1<<14)) != 0
            HLT = (contents & (1<<15)) != 0
        }
    }
}
