//
//  SnapCommandLineDriver.swift
//  Snap
//
//  Created by Andrew Fox on 5/17/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import SnapCore
import TurtleCore
import TurtleCompilerToolbox
import TurtleSimulatorCore

// Provides an interface for driving the snap compiler from the command-line.
public class SnapCommandLineDriver: NSObject {
    public struct SnapCommandLineDriverError: Error {
        public let message: String
        
        public init(_ message: String) {
            self.message = message
        }
    }
    
    public var status: Int32 = 1
    public var stdout: TextOutputStream = String()
    public var stderr: TextOutputStream = String()
    let arguments: [String]
    public private(set) var inputFileName: URL? = nil
    public private(set) var outputFileName: URL? = nil
    public var shouldOutputIR = false
    public var shouldOutputAssembly = false
    public var shouldDoASTDump = false
    public var shouldRunTests = false
    
    public required init(withArguments arguments: [String]) {
        self.arguments = arguments
    }
    
    public func run() {
        do {
            try tryRun()
        } catch let error as SnapCommandLineDriverError {
            reportError(withMessage: error.message)
        } catch let error as CompilerError {
            reportError(withMessage: error.message)
        } catch {
            reportError(withMessage: error.localizedDescription)
        }
    }
    
    func reportError(withMessage message: String) {
        stderr.write("Error: " + message)
    }
    
    func tryRun() throws {
        try parseArguments()
        
        let fileName = inputFileName!.relativePath
        let maybeText = String(data: try Data(contentsOf: inputFileName!), encoding: .utf8)
        guard let text = maybeText else {
            throw SnapCommandLineDriverError("failed to read input file as UTF-8 text: \(fileName)")
        }
        let frontEnd = SnapCompiler()
        frontEnd.isUsingStandardLibrary = true
        frontEnd.shouldRunTests = shouldRunTests
        frontEnd.compile(text, inputFileName)
        if frontEnd.hasError {
            throw CompilerError.makeOmnibusError(fileName: fileName, errors: frontEnd.errors)
        }
        
        if shouldDoASTDump {
            stdout.write(frontEnd.ast.description)
            stdout.write("\n")
        }
        
        if shouldOutputAssembly {
            try writeDisassemblyToFile(instructions: frontEnd.instructions, programDebugInfo: frontEnd.programDebugInfo)
        } else if shouldOutputIR {
            try writeToFile(ir: frontEnd.ir, programDebugInfo: frontEnd.programDebugInfo)
        } else {
            try writeToFile(instructions: frontEnd.instructions)
        }
        
        if shouldRunTests {
            try runUnitTests(frontEnd)
        }
        
        status = 0
    }
    
    fileprivate func runUnitTests(_ frontEnd: SnapCompiler) throws {
        let computer = Computer()
        let microcodeGenerator = MicrocodeGenerator()
        microcodeGenerator.generate()
        computer.provideMicrocode(microcode: microcodeGenerator.microcode)
        computer.logger = nil
        computer.programDebugInfo = frontEnd.programDebugInfo
        computer.provideInstructions(frontEnd.instructions)
        var previousSerialOutput = ""
        computer.didUpdateSerialOutput = {
            let delta = String($0.dropFirst(previousSerialOutput.count))
            previousSerialOutput = $0
            self.stdout.write(delta)
        }
        try computer.runUntilHalted()
        self.stdout.write("\n")
    }
    
    func writeToFile(ir: [CrackleInstruction], programDebugInfo: SnapDebugInfo?) throws {
        let string = CrackleInstructionListingMaker.makeListing(instructions: ir, programDebugInfo: programDebugInfo)
        try string.write(to: outputFileName!, atomically: true, encoding: .utf8)
    }
    
    func writeDisassemblyToFile(instructions: [Instruction], programDebugInfo: SnapDebugInfo?) throws {
        let base = 0
        let string = AssemblyListingMaker.makeListing(base, instructions, programDebugInfo)
        try string.write(to: outputFileName!, atomically: true, encoding: .utf8)
    }
    
    func writeToFile(instructions: [Instruction]) throws {
        if let outputFileName = outputFileName {
            let computer = Computer()
            computer.provideInstructions(instructions)
            try computer.saveProgram(to: outputFileName)
        }
    }
    
    public func parseArguments() throws {
        let argParser = SnapCommandLineArgumentParser(args: arguments)
        do {
            try argParser.parse()
        } catch let error as SnapCommandLineParserError {
            switch error {
            case .unexpectedEndOfInput:
                throw SnapCommandLineDriverError(makeUsageMessage())
            case .unknownOption(let option):
                throw SnapCommandLineDriverError("unknown option `\(option)'\n\n\(makeUsageMessage())")
            }
        }
        let options = argParser.options
        
        if options.contains(.printHelp) {
            stdout.write(makeUsageMessage())
            exit(0)
        }
            
        for option in options {
            switch option {
            case .printHelp:
                break // do nothing
                
            case .inputFileName(let fileName):
                try parseInputFileName(fileName)
                
            case .outputFileName(let fileName):
                try parseOutputFileName(fileName)
                
            case .S:
                if shouldOutputIR {
                    throw SnapCommandLineDriverError("-S and -ir are mutually exclusive")
                }
                shouldOutputAssembly = true
                
            case .ir:
                if shouldOutputAssembly {
                    throw SnapCommandLineDriverError("-S and -ir are mutually exclusive")
                }
                shouldOutputIR = true
                
            case .astDump:
                shouldDoASTDump = true
                
            case .test:
                shouldRunTests = true
            }
        }
        
        if !shouldRunTests && inputFileName == nil {
            throw SnapCommandLineDriverError("expected input filename")
        }
        
        if !shouldRunTests && outputFileName == nil {
            let baseName: String = inputFileName!.deletingPathExtension().lastPathComponent
            let ext: String
            if shouldOutputAssembly {
                ext = ".asm"
            } else if shouldOutputIR {
                ext = ".ir"
            } else {
                ext = ".program"
            }
            outputFileName = URL(fileURLWithPath: baseName + ext)
        }
    }
    
    func makeUsageMessage() -> String {
        return """
OVERVIEW: compiler for the Snap programming language

USAGE:
\(arguments[0]) [test] [options] file...
            
OPTIONS:
\ttest       Compile the program for testing and run immediately in a VM.
\t-h         Display available options
\t-o <file>  Specify the output filename
\t-S         Output assembly code
\t-ir        Output intermediate representation
\t-ast-dump  Print the abstract syntax tree to stdout.
"""
    }

    func parseInputFileName(_ fileName: String) throws {
        if inputFileName != nil {
            throw SnapCommandLineDriverError("compiler currently only supports one input file at a time.")
        }
        inputFileName = URL(fileURLWithPath: fileName)
        var isDirectory: ObjCBool = false
        if !FileManager.default.fileExists(atPath: inputFileName!.relativePath, isDirectory: &isDirectory) {
            throw SnapCommandLineDriverError("input file does not exist: \(inputFileName!.relativePath)")
        }
        if (isDirectory.boolValue) {
            throw SnapCommandLineDriverError("input file is a directory: \(inputFileName!.relativePath)")
        }
        if !FileManager.default.isReadableFile(atPath: inputFileName!.relativePath) {
            throw SnapCommandLineDriverError("input file is not readable: \(inputFileName!.relativePath)")
        }
    }
    
    func parseOutputFileName(_ fileName: String) throws {
        if outputFileName != nil {
            throw SnapCommandLineDriverError("output filename can only be specified one time.")
        }
        outputFileName = URL(fileURLWithPath: fileName)
        if !FileManager.default.fileExists(atPath: outputFileName!.deletingLastPathComponent().relativePath) {
            let name = outputFileName!.deletingLastPathComponent().relativePath
            throw SnapCommandLineDriverError("specified output directory does not exist: \(name)")
        }
        if FileManager.default.fileExists(atPath: outputFileName!.relativePath) {
            if !FileManager.default.isWritableFile(atPath: outputFileName!.relativePath) {
                let name = outputFileName!.relativePath
                throw SnapCommandLineDriverError("output file exists but is not writable: \(name)")
            }
        }
    }
}
