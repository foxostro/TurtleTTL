//
//  ExpressionCompilerFrontEnd.swift
//  TurtleCompilerToolbox
//
//  Created by Andrew Fox on 5/22/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

// Takes an expression and generates intermediate code which can be more easily
// compiled to machine code. (see also ExpressionCompilerBackEnd)
public class ExpressionCompilerFrontEnd: NSObject {
    let symbols: SymbolTable
    
    public init(symbols: SymbolTable = SymbolTable()) {
        self.symbols = symbols
    }
    
    public func compile(expression: Expression) throws -> [StackIR] {
        if let literal = expression as? Expression.Literal {
            return compile(literal: literal)
        } else if let binary = expression as? Expression.Binary {
            return try compile(binary: binary)
        } else if let identifier = expression as? Expression.Identifier {
            return try compile(identifier: identifier)
        } else if let assignment = expression as? Expression.Assignment {
            return try compile(assignment: assignment)
        } else {
            throw unsupportedError(expression: expression)
        }
    }
    
    private func compile(literal: Expression.Literal) -> [StackIR] {
        return compile(intValue: literal.number.literal)
    }
    
    private func compile(intValue: Int) -> [StackIR] {
        return [.push(intValue)]
    }
    
    private func compile(binary: Expression.Binary) throws -> [StackIR] {
        let right: [StackIR] = try compile(expression: binary.right)
        let left: [StackIR] = try compile(expression: binary.left)
        return right + left + [getOperator(binary: binary)]
    }
    
    private func getOperator(binary: Expression.Binary) -> StackIR {
        switch binary.op.op {
        case .eq:
            return .eq
        case .lt:
            return .lt
        case .plus:
            return .add
        case .minus:
            return .sub
        case .multiply:
            return .mul
        case .divide:
            return .div
        case .modulus:
            return .mod
        }
    }
    
    private func compile(identifier: Expression.Identifier) throws -> [StackIR] {
        let symbol = try symbols.resolve(identifierToken: identifier.identifier)
        switch symbol {
        case .constantAddress(let address):
            return compile(intValue: address.value)
        case .constantWord(let word):
            return compile(intValue: Int(word.value))
        case .staticWord(let word):
            return [.load(word.address)]
        }
    }
    
    private func compile(assignment: Expression.Assignment) throws -> [StackIR] {
        let symbol = try symbols.resolve(identifierToken: assignment.identifier)
        switch symbol {
        case .constantAddress(let address):
            throw CompilerError(line: assignment.identifier.lineNumber, message: "cannot assign to label `\(address.identifier)'")
        case .constantWord(let word):
            throw CompilerError(line: assignment.identifier.lineNumber, message: "cannot assign to constant `\(word.identifier)'")
        case .staticWord(let word):
            if word.isMutable {
                return try compile(expression: assignment.child) + [.store(word.address)]
            } else {
                throw CompilerError(line: assignment.identifier.lineNumber, message: "cannot assign to immutable variable `\(assignment.identifier.lexeme)'")
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
