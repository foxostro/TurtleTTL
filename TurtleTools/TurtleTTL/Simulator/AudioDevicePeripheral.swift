//
//  AudioDevicePeripheral.swift
//  TurtleTTL
//
//  Created by Andrew Fox on 5/10/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import Cocoa

public protocol ToneGenerator {
    var frequency: Double { get set }
    var amplitude1: Double { get set }
    var amplitude2: Double { get set }
    var directDrive: Double { get set }
}

public class AudioDevicePeripheral: ComputerPeripheral {
    public let kFrequencyRegisterAddr = 0x00
    public let kAmplitude1RegisterAddr = 0x01
    public let kAmplitude2RegisterAddr = 0x02
    public let kDirectDriveRegisterAddr = 0x03
    public var toneGenerator: ToneGenerator?
    
    public var frequencyRegister: UInt8 = 0 {
        didSet {
            let mapping: [Range<Int> : (Double,Double)] = [
                0..<15 : (138.0, 147.0),
                15..<31 : (147.0, 183.0),
                31..<63 : (183.0, 316.0),
                63..<127 : (316.0, 692.0),
                127..<255 : (692.0, 1585.0),
                255..<256 : (1585.0, 1585.0)
            ]
            
            for (rangeValue, rangeFrequency) in mapping {
                let value = Int(frequencyRegister)
                if rangeValue ~= value {
                    let proportion = Double(value - rangeValue.lowerBound) / Double(rangeValue.upperBound - rangeValue.lowerBound)
                    let frequency = rangeFrequency.0 + proportion * (rangeFrequency.1 - rangeFrequency.0)
                    toneGenerator?.frequency = frequency
                    break
                }
            }
        }
    }
    
    public var amplitude1Register: UInt8 = 0 {
        didSet {
            toneGenerator?.amplitude1 = Double(amplitude1Register) / 255.0
        }
    }
    
    public var amplitude2Register: UInt8 = 0 {
        didSet {
            toneGenerator?.amplitude2 = Double(amplitude2Register) / 255.0
        }
    }
    
    public var directDriveRegister: UInt8 = 0 {
        didSet {
            toneGenerator?.directDrive = Double(directDriveRegister) / 255.0
        }
    }
    
    func lerp(_ x: Double, _ x0: Double, _ x1: Double) -> Double {
        return x0 + (x * (x1 - x0))
    }
    
    public init(toneGenerator: ToneGenerator?) {
        self.toneGenerator = toneGenerator
        super.init(name: "Audio Device")
    }
    
    public func store(_ value: UInt8, _ address: Int) -> Void {
        if address == kFrequencyRegisterAddr {
            frequencyRegister = value
        }
            
        if address == kAmplitude1RegisterAddr {
            amplitude1Register = value
        }
            
        if address == kAmplitude2RegisterAddr {
            amplitude2Register = value
        }
            
        if address == kDirectDriveRegisterAddr {
            directDriveRegister = value
        }
    }
    
    public func load(_ address: Int) -> UInt8 {
        return 0
    }
    
    public override func onControlClock() {
        if (PO == .active) {
            bus = Register(withValue: load(valueOfXYPair()))
        }
    }
    
    public override func onRegisterClock() {
        if (PI == .active) {
            store(bus.value, valueOfXYPair())
        }
    }
}
