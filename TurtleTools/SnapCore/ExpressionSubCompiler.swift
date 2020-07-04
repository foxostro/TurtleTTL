//
//  ExpressionSubCompiler.swift
//  SnapCore
//
//  Created by Andrew Fox on 5/22/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import TurtleCompilerToolbox

// Takes an expression and generates intermediate code which can be more easily
// compiled to machine code. (see also YertleToTurtleMachineCodeCompiler)
// The expression will push the result onto the stack. The client assumes the
// responsibility of cleaning up.
public class ExpressionSubCompiler: NSObject {
    let symbols: SymbolTable
    let kFramePointerAddressHi = Int(YertleToTurtleMachineCodeCompiler.kFramePointerAddressHi)
    let kFramePointerAddressLo = Int(YertleToTurtleMachineCodeCompiler.kFramePointerAddressLo)
    
    public init(symbols: SymbolTable = SymbolTable()) {
        self.symbols = symbols
    }
    
    public func compile(expression: Expression) throws -> [YertleInstruction] {
        try ExpressionTypeChecker(symbols: symbols).check(expression: expression)
        
        if let literal = expression as? Expression.LiteralWord {
            return try compile(literalInt: literal)
        } else if let literal = expression as? Expression.LiteralBoolean {
            return compile(literalBoolean: literal)
        } else if let binary = expression as? Expression.Binary {
            return try compile(binary: binary)
        } else if let unary = expression as? Expression.Unary {
            return try compile(unary: unary)
        } else if let identifier = expression as? Expression.Identifier {
            return try compile(identifier: identifier)
        } else if let assignment = expression as? Expression.Assignment {
            return try compile(assignment: assignment)
        } else if let call = expression as? Expression.Call {
            return try compile(call: call)
        }
        
        throw unsupportedError(expression: expression)
    }
    
    private func compile(literalInt: Expression.LiteralWord) throws -> [YertleInstruction] {
        let value = literalInt.number.literal
        if value >= 0 && value < 256 {
            return [.push(value)]
        }
        if value >= 256 && value < 65536 {
            return [.push16(value)]
        }
        throw CompilerError(line: literalInt.number.lineNumber, message: "literal int `\(literalInt.number.lexeme)' is too large")
    }
    
    private func compile(intValue: Int) -> [YertleInstruction] {
        return [.push(intValue)]
    }
    
    private func compile(literalBoolean: Expression.LiteralBoolean) -> [YertleInstruction] {
        return compile(boolValue: literalBoolean.boolean.literal)
    }
    
    private func compile(boolValue: Bool) -> [YertleInstruction] {
        return compile(intValue: boolValue ? 1 : 0)
    }
    
    private func compile(unary: Expression.Unary) throws -> [YertleInstruction] {
        let childExpr = try compile(expression: unary.child)
        let childType = try ExpressionTypeChecker(symbols: symbols).check(expression: unary.child)
        var result: [YertleInstruction] = []
        switch childType {
        case .u16:
            result += [.push16(0)]
            result += childExpr
            switch unary.op.op {
            case .minus:
                result += [.sub16]
            default:
                throw invalidUnaryOperator(unary)
            }
        case .u8:
            result += [.push(0)]
            result += childExpr
            switch unary.op.op {
            case .minus:
                result += [.sub]
            default:
                throw invalidUnaryOperator(unary)
            }
        default:
            throw unsupportedError(expression: unary)
        }
        return result
    }
    
    private func invalidUnaryOperator(_ unary: Expression.Unary) -> CompilerError {
        let lineNumber = unary.tokens.first?.lineNumber ?? -1
        return CompilerError(line: lineNumber, message: "`\(unary.op.lexeme)' is not a prefix unary operator")
    }
    
    private func compile(binary: Expression.Binary) throws -> [YertleInstruction] {
        let right: [YertleInstruction] = try compile(expression: binary.right)
        let rightType = try ExpressionTypeChecker(symbols: symbols).check(expression: binary.right)
        
        let left: [YertleInstruction] = try compile(expression: binary.left)
        let leftType = try ExpressionTypeChecker(symbols: symbols).check(expression: binary.left)
        
        switch binary.op.op {
        case .eq:
            switch leftType {
            case .u16:
                switch rightType {
                case .u16:
                    return right + left + [.eq16]
                case .u8:
                    return right + [.push(0)] + left + [.eq16]
                default:
                    throw unsupportedError(expression: binary)
                }
            case .u8:
                switch rightType {
                case .u8:
                    return right + left + [.eq]
                case .u16:
                    return right + left + [.push(0), .eq16]
                default:
                    throw unsupportedError(expression: binary)
                }
            case .bool:
                switch rightType {
                case .bool:
                    return right + left + [.eq]
                default:
                    throw unsupportedError(expression: binary)
                }
            default:
                throw unsupportedError(expression: binary)
            }
        case .ne:
            switch leftType {
            case .u16:
                switch rightType {
                case .u16:
                    return right + left + [.ne16]
                case .u8:
                    return right + [.push(0)] + left + [.ne16]
                default:
                    throw unsupportedError(expression: binary)
                }
            case .u8:
                switch rightType {
                case .u16:
                    return right + left + [.push(0), .ne16]
                case .u8:
                    return right + left + [.ne]
                default:
                    throw unsupportedError(expression: binary)
                }
            case .bool:
                switch rightType {
                case .bool:
                    return right + left + [.ne]
                default:
                    throw unsupportedError(expression: binary)
                }
            default:
                throw unsupportedError(expression: binary)
            }
        case .lt:
            switch leftType {
            case .u16:
                switch rightType {
                case .u16:
                    return right + left + [.lt16]
                case .u8:
                    return right + [.push(0)] + left + [.lt16]
                default:
                    throw unsupportedError(expression: binary)
                }
            case .u8:
                switch rightType {
                case .u16:
                    return right + left + [.push(0), .lt16]
                case .u8:
                    return right + left + [.lt]
                default:
                    throw unsupportedError(expression: binary)
                }
            default:
                throw unsupportedError(expression: binary)
            }
        case .gt:
            switch leftType {
            case .u16:
                switch rightType {
                case .u16:
                    return right + left + [.gt16]
                case .u8:
                    return right + [.push(0)] + left + [.gt16]
                default:
                    throw unsupportedError(expression: binary)
                }
            case .u8:
                switch rightType {
                case .u16:
                    return right + left + [.push(0), .gt16]
                case .u8:
                    return right + left + [.gt]
                default:
                    throw unsupportedError(expression: binary)
                }
            default:
                throw unsupportedError(expression: binary)
            }
        case .le:
            switch leftType {
            case .u16:
                switch rightType {
                case .u16:
                    return right + left + [.le16]
                case .u8:
                    return right + [.push(0)] + left + [.le16]
                default:
                    throw unsupportedError(expression: binary)
                }
            case .u8:
                switch rightType {
                case .u16:
                    return right + left + [.push(0), .le16]
                case .u8:
                    return right + left + [.le]
                default:
                    throw unsupportedError(expression: binary)
                }
            default:
                throw unsupportedError(expression: binary)
            }
        case .ge:
            switch leftType {
            case .u16:
                switch rightType {
                case .u16:
                    return right + left + [.ge16]
                case .u8:
                    return right + [.push(0)] + left + [.ge16]
                default:
                    throw unsupportedError(expression: binary)
                }
            case .u8:
                switch rightType {
                case .u16:
                    return right + left + [.push(0), .ge16]
                case .u8:
                    return right + left + [.ge]
                default:
                    throw unsupportedError(expression: binary)
                }
            default:
                throw unsupportedError(expression: binary)
            }
        case .plus:
            switch leftType {
            case .u16:
                switch rightType {
                case .u16:
                    return right + left + [.add16]
                case .u8:
                    return right + [.push(0)] + left + [.add16]
                default:
                    throw unsupportedError(expression: binary)
                }
            case .u8:
                switch rightType {
                case .u8:
                    return right + left + [.add]
                case .u16:
                    return right + left + [.push(0), .add16]
                default:
                    throw unsupportedError(expression: binary)
                }
            default:
                throw unsupportedError(expression: binary)
            }
        case .minus:
            switch leftType {
            case .u16:
                switch rightType {
                case .u16:
                    return right + left + [.sub16]
                case .u8:
                    return right + [.push(0)] + left + [.sub16]
                default:
                    throw unsupportedError(expression: binary)
                }
            case .u8:
                switch rightType {
                case .u16:
                    return right + left + [.push(0), .sub16]
                case .u8:
                    return right + left + [.sub]
                default:
                    throw unsupportedError(expression: binary)
                }
            default:
                throw unsupportedError(expression: binary)
            }
        case .multiply:
            switch leftType {
            case .u16:
                switch rightType {
                case .u16:
                    return right + left + [.mul16]
                case .u8:
                    return right + [.push(0)] + left + [.mul16]
                default:
                    throw unsupportedError(expression: binary)
                }
            case .u8:
                switch rightType {
                case .u16:
                    return right + left + [.push(0), .mul16]
                case .u8:
                    return right + left + [.mul]
                default:
                    throw unsupportedError(expression: binary)
                }
            default:
                throw unsupportedError(expression: binary)
            }
        case .divide:
           switch leftType {
            case .u16:
                switch rightType {
                case .u16:
                    return right + left + [.div16]
                case .u8:
                    return right + [.push(0)] + left + [.div16]
                default:
                    throw unsupportedError(expression: binary)
                }
            case .u8:
                switch rightType {
                case .u16:
                    return right + left + [.push(0), .div16]
                case .u8:
                    return right + left + [.div]
                default:
                    throw unsupportedError(expression: binary)
                }
            default:
                throw unsupportedError(expression: binary)
            }
        case .modulus:
            switch leftType {
            case .u16:
                switch rightType {
                case .u16:
                    return right + left + [.mod16]
                case .u8:
                    return right + [.push(0)] + left + [.mod16]
                default:
                    throw unsupportedError(expression: binary)
                }
            case .u8:
                switch rightType {
                case .u16:
                    return right + left + [.push(0), .mod16]
                case .u8:
                    return right + left + [.mod]
                default:
                    throw unsupportedError(expression: binary)
                }
            default:
                throw unsupportedError(expression: binary)
            }
        }
    }
    
    private func compile(identifier: Expression.Identifier) throws -> [YertleInstruction] {
        let resolution = try symbols.resolveWithStackFrameDepth(identifierToken: identifier.identifier)
        let symbol = resolution.0
        let depth = symbols.stackFrameIndex - resolution.1
        switch symbol.storage {
        case .staticStorage:
            return loadStaticSymbol(symbol)
        case .stackStorage:
            return loadStackSymbol(symbol, depth)
        }
    }
    
    private func loadStaticSymbol(_ symbol: Symbol) -> [YertleInstruction] {
        switch symbol.type {
        case .u16:
            return [.load16(symbol.offset)]
        case .u8, .bool:
            return [.load(symbol.offset)]
        case .function, .void:
            abort()
        }
    }
    
    private func loadStackSymbol(_ symbol: Symbol, _ depth: Int) -> [YertleInstruction] {
        var instructions: [YertleInstruction] = []
        instructions += computeAddressOfLocalVariable(symbol, depth)
        switch symbol.type {
        case .u16:
            instructions += [.loadIndirect16]
        case .u8, .bool:
            instructions += [.loadIndirect]
        case .function, .void:
            abort()
        }
        return instructions
    }
    
    private func computeAddressOfLocalVariable(_ symbol: Symbol, _ depth: Int) -> [YertleInstruction] {
        var instructions: [YertleInstruction] = []
        
        // Load the frame pointer.
        instructions += [.load16(kFramePointerAddressHi)]
        
        // Follow the frame pointer `depth' times.
        instructions += [YertleInstruction].init(repeating: .loadIndirect16, count: depth)
        
        // Push the symbol offset. This is used in the subtraction below.
        instructions += [.push16(symbol.offset)]
        
        // Apply the offset to get the final address.
        instructions += [.sub16]
        
        return instructions
    }
    
    private func compile(assignment: Expression.Assignment) throws -> [YertleInstruction] {
        let resolution = try symbols.resolveWithStackFrameDepth(identifierToken: assignment.identifier)
        let symbol = resolution.0
        let depth = resolution.1
        guard symbol.isMutable else {
            throw CompilerError(line: assignment.identifier.lineNumber, message: "cannot assign to immutable variable `\(assignment.identifier.lexeme)'")
        }
        
        var instructions: [YertleInstruction] = []
        
        switch symbol.type {
        case .u16, .u8, .bool:
            instructions += try compile(expression: assignment.child)
            instructions += storeSymbol(symbol, depth)
        case .function, .void:
            abort()
        }
        
        return instructions
    }
    
    private func storeSymbol(_ symbol: Symbol, _ depth: Int) -> [YertleInstruction] {
        assert(symbol.isMutable)
        var instructions: [YertleInstruction] = []
        switch symbol.storage {
        case .staticStorage:
            switch symbol.type {
            case .u16:
                instructions += [.store16(symbol.offset)]
            case .u8, .bool:
                instructions += [.store(symbol.offset)]
            case .function, .void:
                abort()
            }
        case .stackStorage:
            instructions += computeAddressOfLocalVariable(symbol, depth)
            switch symbol.type {
            case .u16:
                instructions += [.storeIndirect16]
            case .u8, .bool:
                instructions += [.storeIndirect]
            case .function, .void:
                abort()
            }
        }
        return instructions
    }
    
    private func compile(call node: Expression.Call) throws -> [YertleInstruction] {
        let identifierToken = (node.callee as! Expression.Identifier).identifier
        let symbol = try symbols.resolve(identifierToken: identifierToken)
        switch symbol.type {
        case .function(name: _, mangledName: let mangledName, functionType: let typ):
            var instructions: [YertleInstruction] = []
            for expr in node.arguments {
                let compiledExpr = try compile(expression: expr)
                instructions += compiledExpr
            }
            instructions += [
                .jalr(TokenIdentifier(lineNumber: identifierToken.lineNumber, lexeme: mangledName))
            ]
            if typ.returnType != .void {
                instructions += [
                    .load(SnapToYertleCompiler.kReturnValueScratchLocation)
                ]
            }
            return instructions
        default:
            let message = "cannot call value of non-function type `\(String(describing: symbol.type))'"
            if let lineNumber = node.tokens.first?.lineNumber {
                throw CompilerError(line: lineNumber, message: message)
            } else {
                throw CompilerError(message: message)
            }
        }
    }
    
    private func unsupportedError(expression: Expression) -> Error {
        let message = "unsupported expression: \(expression)"
        if let lineNumber = expression.tokens.first?.lineNumber {
            return CompilerError(line: lineNumber, message: message)
        } else {
            return CompilerError(message: message)
        }
    }
}
