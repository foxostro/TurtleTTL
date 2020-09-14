//
//  LvalueExpressionTypeChecker.swift
//  SnapCore
//
//  Created by Andrew Fox on 7/24/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import TurtleCompilerToolbox

// Evaluates the expression type in an lvalue context.
public class LvalueExpressionTypeChecker: NSObject {
    public let symbols: SymbolTable
    public var messageWhenLvalueGenericallyCannotBeTaken = "expression is not assignable"
    
    public init(symbols: SymbolTable = SymbolTable()) {
        self.symbols = symbols
    }
        
    func rvalueContext() -> RvalueExpressionTypeChecker {
        return RvalueExpressionTypeChecker(symbols: symbols)
    }
    
    @discardableResult public func check(expression: Expression) throws -> SymbolType {
        switch expression {
        case let identifier as Expression.Identifier:
            return try check(identifier: identifier)
        case let expr as Expression.Subscript:
            return try check(subscript: expr)
        case let expr as Expression.Get:
            return try check(get: expr)
        default:
            throw makeNotAssignableError(expression: expression)
        }
    }
        
    public func check(identifier expr: Expression.Identifier) throws -> SymbolType {
        return try rvalueContext().check(identifier: expr)
    }
    
    public func check(subscript expr: Expression.Subscript) throws -> SymbolType {
        let symbol = try symbols.resolve(sourceAnchor: expr.identifier.sourceAnchor,
                                         identifier: expr.identifier.identifier)
        if !symbol.isMutable {
            throw CompilerError(sourceAnchor: expr.sourceAnchor,
                                message: "expression is not assignable: `\(expr.identifier.identifier)' is immutable")
        }
        return try rvalueContext().check(subscript: expr)
    }
    
    public func check(get expr: Expression.Get) throws -> SymbolType {
        let name = expr.member.identifier
        let resultType = try check(expression: expr.expr)
        switch resultType {
        case .array:
            if name == "count" {
                throw makeNotAssignableError(expression: expr.expr)
            }
        case .dynamicArray:
            if name == "count" {
                throw makeNotAssignableError(expression: expr.expr)
            }
        case .structType(let typ):
            if let symbol = typ.symbols.maybeResolve(identifier: name) {
                return symbol.type
            }
        case .pointer(let typ):
            if name == "pointee" {
                return typ
            }
        default:
            break
        }
        throw CompilerError(sourceAnchor: expr.sourceAnchor, message: "value of type `\(resultType)' has no member `\(name)'")
    }
    
    func makeNotAssignableError(expression: Expression) -> Error {
        return CompilerError(sourceAnchor: expression.sourceAnchor,
                             message: messageWhenLvalueGenericallyCannotBeTaken)
    }
}
