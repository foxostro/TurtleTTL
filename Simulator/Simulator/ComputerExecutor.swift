//
//  ComputerExecutor.swift
//  Simulator
//
//  Created by Andrew Fox on 7/29/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class ComputerExecutor: NSObject {
    var computer:Computer!
    var onStep:()->Void = {}
    var didStart:()->Void = {}
    var didStop:()->Void = {}
    var didHalt:()->Void = {}
    var didReset:()->Void = {}
    
    var isExecuting = false {
        didSet {
            if (isExecuting) {
                didStart()
            } else {
                didStart()
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
    
    func step() {
        computer.step()
        onStep()
    }
    
    func runOrStop() {
        isExecuting = !isExecuting
    }
    
    func beginTimer() {
        isHalted = false
        isExecuting = false
        reset()
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: {timer in
            self.tick()
        })
    }
    
    func tick() {
        if (computer.controlWordRegister.HLT) {
            isExecuting = false
            isHalted = true
        }
        
        if (isExecuting) {
            computer.step()
            onStep()
        }
    }
    
    func reset() {
        isHalted = false
        isExecuting = false
        computer.reset()
        didReset()
    }
}
