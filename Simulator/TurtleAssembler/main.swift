//
//  main.swift
//  TurtleAssembler
//
//  Created by Andrew Fox on 8/1/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Foundation
import Darwin

if (CommandLine.arguments.count != 2) {
    fputs("ERROR: Incorrect number of arguments. " +
          "Expected an input filename and an output filename.\n",
          stderr)
    exit(1)
}

let inputFileName = CommandLine.arguments[0] as String
let outputFileName = CommandLine.arguments[1] as String

print("inputFileName: %@")
print("outputFileName: %@")
