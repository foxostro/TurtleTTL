//
//  ALU.swift
//  Simulator
//
//  Created by Andrew Fox on 7/27/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

class ALU: NSObject {
    var a:UInt8 = 0
    var b:UInt8 = 0
    var s = 0
    var mode = 0
    var carryIn = 0 // active-low
    private(set) var carryFlag = 0
    private(set) var equalFlag = 0
    private(set) var result:UInt8 = 0
    
    // The actual hardware will update outputs as inputs change. However, in
    // the simulator, the outputs only update when the update method is called.
    func update() {
        if (s == 0b0000) {
            if (mode == 0) {
                if (carryIn == 0) {
                    let r = a.addingReportingOverflow(1)
                    result = r.0
                    carryFlag = r.1 ? 0 : 1
                } else {
                    result = a
                    carryFlag = 1
                }
            } else {
                result = ~a
                carryFlag = 1
            }
        } else if (s == 0b0001) {
            if (mode == 0) {
                if (carryIn == 0) {
                    let r = (a|b).addingReportingOverflow(1)
                    result = r.0
                    carryFlag = r.1 ? 0 : 1
                } else {
                    result = a | b
                    carryFlag = 1
                }
            } else {
                result = ~a & ~b
                carryFlag = 1
            }
        } else if (s == 0b0010) {
            if (mode == 0) {
                if (carryIn == 0) {
                    let r = (a | ~b).addingReportingOverflow(1)
                    result = r.0
                    carryFlag = r.1 ? 0 : 1
                } else {
                    result = a | ~b
                    carryFlag = 1
                }
            } else {
                result = ~a & b
                carryFlag = 1
            }
        } else if (s == 0b0011) {
            if (mode == 0) {
                if (carryIn == 0) {
                    result = 0
                    carryFlag = 1
                } else {
                    result = ~0
                    carryFlag = 1
                }
            } else {
                result = 0
                carryFlag = 1
            }
        } else if (s == 0b0100) {
            if (mode == 0) {
                if (carryIn == 0) {
                    let p = a.addingReportingOverflow(a & ~b)
                    let q = p.0.addingReportingOverflow(1)
                    result = q.0
                    carryFlag = (p.1 || q.1) ? 0 : 1
                } else {
                    let r = (a & ~b).addingReportingOverflow(a | b)
                    result = r.0
                    carryFlag = r.1 ? 0 : 1
                }
            } else {
                result = ~a & ~b
                carryFlag = 1
            }
        } else if (s == 0b0101) {
            if (mode == 0) {
                if (carryIn == 0) {
                    let p = (a & b).addingReportingOverflow(a | b)
                    let q = p.0.addingReportingOverflow(1)
                    result = q.0
                    carryFlag = (p.1 || q.1) ? 0 : 1
                } else {
                    let r = a.addingReportingOverflow(a & ~b)
                    result = r.0
                    carryFlag = r.1 ? 0 : 1
                }
            } else {
                result = ~b
                carryFlag = 1
            }
        } else if (s == 0b0110) {
            if (mode == 0) {
                if (carryIn == 0) {
                    abort()
                } else {
                    abort()
                }
            } else {
                abort()
            }
        } else if (s == 0b0111) {
            if (mode == 0) {
                if (carryIn == 0) {
                    abort()
                } else {
                    abort()
                }
            } else {
                abort()
            }
        } else if (s == 0b1000) {
            if (mode == 0) {
                if (carryIn == 0) {
                    abort()
                } else {
                    abort()
                }
            } else {
                abort()
            }
        } else if (s == 0b1001) {
            if (mode == 0) {
                if (carryIn == 0) {
                    let p = a.addingReportingOverflow(b)
                    let q = p.0.addingReportingOverflow(1)
                    result = q.0
                    carryFlag = (p.1 || q.1) ? 0 : 1
                } else {
                    let r = a.addingReportingOverflow(b)
                    result = r.0
                    carryFlag = r.1 ? 0 : 1
                }
            } else {
                abort()
            }
        } else if (s == 0b1010) {
            if (mode == 0) {
                if (carryIn == 0) {
                    abort()
                } else {
                    abort()
                }
            } else {
                abort()
            }
        } else if (s == 0b1011) {
            if (mode == 0) {
                if (carryIn == 0) {
                    abort()
                } else {
                    abort()
                }
            } else {
                abort()
            }
        } else if (s == 0b1100) {
            if (mode == 0) {
                if (carryIn == 0) {
                    abort()
                } else {
                    abort()
                }
            } else {
                abort()
            }
        } else if (s == 0b1101) {
            if (mode == 0) {
                if (carryIn == 0) {
                    abort()
                } else {
                    abort()
                }
            } else {
                abort()
            }
        } else if (s == 0b1110) {
            if (mode == 0) {
                if (carryIn == 0) {
                    abort()
                } else {
                    abort()
                }
            } else {
                abort()
            }
        } else if (s == 0b1111) {
            if (mode == 0) {
                if (carryIn == 0) {
                    abort()
                } else {
                    abort()
                }
            } else {
                abort()
            }
        } else {
            abort()
        }
        
        equalFlag = (result == 255) ? 1 : 0
    }
}
