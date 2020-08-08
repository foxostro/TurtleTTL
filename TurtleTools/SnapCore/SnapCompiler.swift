//
//  SnapCompiler.swift
//  SnapCore
//
//  Created by Andrew Fox on 5/17/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import TurtleCompilerToolbox
import TurtleCore

public class SnapCompiler: NSObject {
    public var isUsingStandardLibrary = false
    public var ast: TopLevel! = nil
    public var ir: [CrackleInstruction] = []
    public var instructions: [Instruction] = []
    public let programDebugInfo = ProgramDebugInfo()
    
    public let kStandardLibrarySourceFileName = "stdlib"
    private var kStandardLibraryText: String!
    
    public private(set) var errors: [CompilerError] = []
    public var hasError:Bool {
        return errors.count != 0
    }
    
    private func loadStandardLibraryIfNecessary() throws {
        if kStandardLibraryText == nil {
            kStandardLibraryText = try readStandardLibraryFromFile()
        }
    }
    
    func readStandardLibraryFromFile() throws -> String? {
        let bundle = Bundle(for: type(of: self))
        if let fileName = bundle.path(forResource: kStandardLibrarySourceFileName, ofType: "snap") {
            do {
                return try String(contentsOfFile: fileName)
            } catch {
                throw CompilerError(message: "failed to read standard library from file: \(fileName)")
            }
        } else {
            throw CompilerError(message: "standard library file is missing: \(kStandardLibrarySourceFileName).snap")
        }
    }
    
    public func compile(_ text: String) {
        return compile(program: text, base: 0x0000)
    }
    
    public func compile(program originalText: String, base: Int) {
        instructions = []
        errors = []
        
        // Until we have a module system, include the standard library by
        // appending the source code of the standard library at the end.
        let text: String
        if isUsingStandardLibrary {
            do {
                try loadStandardLibraryIfNecessary()
            } catch let error as CompilerError {
                errors.append(error)
                return
            } catch {
                errors.append(CompilerError(message: "unrecoverable error: \(error.localizedDescription)"))
                return
            }
            text = originalText + "\n" + kStandardLibraryText
        } else {
            text = originalText
        }
        
        // Lexer pass
        let lexer = SnapLexer(withString: text)
        lexer.scanTokens()
        if lexer.hasError {
            errors = lexer.errors
            return
        }
        
        // Compile to an abstract syntax tree
        let parser = SnapParser(tokens: lexer.tokens)
        parser.parse()
        if parser.hasError {
            errors = parser.errors
            return
        }
        ast = parser.syntaxTree
        
        // Compile the AST to IR code
        let snapToCrackleCompiler = SnapToCrackleCompiler()
        snapToCrackleCompiler.compile(ast: ast)
        if snapToCrackleCompiler.hasError {
            errors = snapToCrackleCompiler.errors
            return
        }
        ir = snapToCrackleCompiler.instructions
        
        // Compile the IR code to Turtle machine code
        let assembler = makeAssembler()
        let irToMachineCode = CrackleToTurtleMachineCodeCompiler(assembler: assembler)
        do {
            try irToMachineCode.compile(ir: ir, mapCrackleInstructionToSource: snapToCrackleCompiler.mapInstructionToSource, base: base)
        } catch let error as CompilerError {
            errors = [error]
            return
        } catch {
            abort()
        }
        instructions = InstructionFormatter.makeInstructionsWithDisassembly(instructions: irToMachineCode.instructions)
        
        // Prepare program debugging information
        programDebugInfo.lineMapper = lexer.lineMapper
        programDebugInfo.mapProgramCounterToSource = irToMachineCode.mapProgramCounterToSource
    }
    
    private func makeAssembler() -> AssemblerBackEnd {
        let microcodeGenerator = MicrocodeGenerator()
        microcodeGenerator.generate()
        let assembler = AssemblerBackEnd(microcodeGenerator: microcodeGenerator)
        return assembler
    }
}
