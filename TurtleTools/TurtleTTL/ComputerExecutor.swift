//
//  ComputerExecutor.swift
//  Simulator
//
//  Created by Andrew Fox on 7/29/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

// Executes a simulation on a background thread.
public class ComputerExecutor: NSObject {
    public var computer:Computer!
    public var onStep:()->Void = {}
    public var didStart:()->Void = {}
    public var didStop:()->Void = {}
    public var didHalt:()->Void = {}
    public var didReset:()->Void = {}
    
    var isExecuting = false {
        didSet {
            if (isExecuting) {
                didStart()
            } else {
                didStop()
            }
        }
    }
    
    var isHalted = false {
        didSet {
            isExecuting = false
            if (isHalted) {
                didHalt()
            }
        }
    }
    
    public func step() {
        computer.step()
        onStep()
    }
    
    public func runOrStop() {
        isExecuting = !isExecuting
    }
    
    public func beginTimer() {
        isHalted = false
        isExecuting = false
        reset()
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: {timer in
            self.tick()
        })
    }
    
    public func tick() {
        if (false == computer.currentState.controlWord.HLT) {
            isExecuting = false
        }
        
        if (isExecuting) {
            computer.step()
            onStep()
        }
    }
    
    public func reset() {
        isHalted = false
        isExecuting = false
        computer.reset()
        didReset()
    }
}
