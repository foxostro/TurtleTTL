//
//  Expression.swift
//  TurtleCompilerToolbox
//
//  Created by Andrew Fox on 5/17/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

public class Expression: AbstractSyntaxTreeNode {
    public var tokens: [Token] {
        var result: [Token] = []
        for child in children {
            result += (child as! Expression).tokens
        }
        return result
    }
    
    public override func isEqual(_ rhs: Any?) -> Bool {
        guard rhs != nil else { return false }
        guard type(of: rhs!) == type(of: self) else { return false }
        guard let rhs = rhs as? Expression else { return false }
        guard isBaseClassPartEqual(rhs) else { return false }
        guard tokens == rhs.tokens else { return false }
        return true
    }
    
    public override var hash: Int {
        var hasher = Hasher()
        hasher.combine(tokens)
        hasher.combine(super.hash)
        return hasher.finalize()
    }
    
    public class MustBeCompileTimeConstantError: CompilerError {
        public init(line lineNumber: Int) {
            super.init(line: lineNumber, message: "expression must be a compile time constant")
        }
    }
    
    public class Literal: Expression {
        public let number: TokenNumber
        public override var tokens: [Token] {
            return [number]
        }
        
        public init(number: TokenNumber) {
            self.number = number
        }
        
        public override func isEqual(_ rhs: Any?) -> Bool {
            guard rhs != nil else { return false }
            guard type(of: rhs!) == type(of: self) else { return false }
            guard let rhs = rhs as? Literal else { return false }
            guard isBaseClassPartEqual(rhs) else { return false }
            guard number == rhs.number else { return false }
            return true
        }
        
        public override var hash: Int {
            var hasher = Hasher()
            hasher.combine(number)
            hasher.combine(super.hash)
            return hasher.finalize()
        }
        
        open override func makeIndentedDescription(depth: Int = 0) -> String {
            return String(format: "%@<%@: number=%@, children=[%@]>",
                          makeIndent(depth: depth),
                          String(describing: type(of: self)),
                          number.lexeme,
                          makeChildDescriptions(depth: depth + 1))
        }
    }
    
    public class Identifier: Expression {
        public let identifier: TokenIdentifier
        public override var tokens: [Token] {
            return [identifier]
        }
        
        public init(identifier: TokenIdentifier) {
            self.identifier = identifier
        }
        
        public override func isEqual(_ rhs: Any?) -> Bool {
            guard rhs != nil else { return false }
            guard type(of: rhs!) == type(of: self) else { return false }
            guard let rhs = rhs as? Identifier else { return false }
            guard isBaseClassPartEqual(rhs) else { return false }
            guard identifier == rhs.identifier else { return false }
            return true
        }
        
        public override var hash: Int {
            var hasher = Hasher()
            hasher.combine(identifier)
            hasher.combine(super.hash)
            return hasher.finalize()
        }
        
        open override func makeIndentedDescription(depth: Int = 0) -> String {
            return String(format: "%@<%@: identifier='%@', children=[%@]>",
                          makeIndent(depth: depth),
                          String(describing: type(of: self)),
                          identifier.lexeme,
                          makeChildDescriptions(depth: depth + 1))
        }
    }
    
    public class Unary: Expression {
        public let op: TokenOperator
        
        public var child: Expression {
            children.first as! Expression
        }
        
        public override var tokens: [Token] {
            return [op] + child.tokens
        }
        
        public required init(op: TokenOperator, expression: Expression) {
            self.op = op
            super.init(children: [expression])
        }
        
        public override func isEqual(_ rhs: Any?) -> Bool {
            guard rhs != nil else { return false }
            guard type(of: rhs!) == type(of: self) else { return false }
            guard let rhs = rhs as? Unary else { return false }
            guard isBaseClassPartEqual(rhs) else { return false }
            guard op == rhs.op else { return false }
            return true
        }
        
        public override var hash: Int {
            var hasher = Hasher()
            hasher.combine(op)
            hasher.combine(super.hash)
            return hasher.finalize()
        }
        
        open override func makeIndentedDescription(depth: Int = 0) -> String {
            return String(format: "%@<%@: op='%@', children=[%@]>",
                          makeIndent(depth: depth),
                          String(describing: type(of: self)),
                          op.lexeme,
                          makeChildDescriptions(depth: depth + 1))
        }
    }
    
    public class Binary: Expression {
        public let op: TokenOperator
        
        public var left: Expression {
            children[0] as! Expression
        }
        
        public var right: Expression {
            children[1] as! Expression
        }
        
        public override var tokens: [Token] {
            return left.tokens + [op] + right.tokens
        }
        
        public required init(op: TokenOperator, left: Expression, right: Expression) {
            self.op = op
            super.init(children: [left, right])
        }
        
        public override func isEqual(_ rhs: Any?) -> Bool {
            guard rhs != nil else { return false }
            guard type(of: rhs!) == type(of: self) else { return false }
            guard let rhs = rhs as? Binary else { return false }
            guard isBaseClassPartEqual(rhs) else { return false }
            guard left == rhs.left else { return false }
            guard op == rhs.op else { return false }
            guard right == rhs.right else { return false }
            return true
        }
        
        public override var hash: Int {
            var hasher = Hasher()
            hasher.combine(op)
            hasher.combine(super.hash)
            return hasher.finalize()
        }
        
        open override func makeIndentedDescription(depth: Int = 0) -> String {
            return String(format: "%@<%@: op='%@', children=[%@]>",
                          makeIndent(depth: depth),
                          String(describing: type(of: self)),
                          op.lexeme,
                          makeChildDescriptions(depth: depth + 1))
        }
    }
}