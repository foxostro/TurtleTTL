//
//  FunctionDeclaration.swift
//  SnapCore
//
//  Created by Andrew Fox on 6/20/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import TurtleCompilerToolbox
import TurtleCore

public class FunctionDeclaration: AbstractSyntaxTreeNode {
    public let identifier: Expression.Identifier
    public let functionType: Expression
    public let argumentNames: [String]
    public let body: Block
    public let visibility: SymbolVisibility
    
    public convenience init(identifier: Expression.Identifier,
                            functionType: Expression,
                            argumentNames: [String],
                            body: Block,
                            visibility: SymbolVisibility = .privateVisibility) {
        self.init(sourceAnchor: nil,
                  identifier: identifier,
                  functionType: functionType,
                  argumentNames: argumentNames,
                  body: body,
                  visibility: visibility)
    }
    
    public required init(sourceAnchor: SourceAnchor?,
                         identifier: Expression.Identifier,
                         functionType: Expression,
                         argumentNames: [String],
                         body: Block,
                         visibility: SymbolVisibility = .privateVisibility) {
        self.identifier = identifier
        self.functionType = functionType
        self.argumentNames = argumentNames
        self.body = body
        self.visibility = visibility
        super.init(sourceAnchor: sourceAnchor)
    }
    
    public override func isEqual(_ rhs: Any?) -> Bool {
        guard rhs != nil else {
            return false
        }
        guard type(of: rhs!) == type(of: self) else {
            return false
        }
        guard super.isEqual(rhs) else {
            return false
        }
        guard let rhs = rhs as? FunctionDeclaration else {
            return false
        }
        guard identifier == rhs.identifier else {
            return false
        }
        guard functionType == rhs.functionType else {
            return false
        }
        guard argumentNames == rhs.argumentNames else {
            return false
        }
        guard body == rhs.body else {
            return false
        }
        guard visibility == rhs.visibility else {
            return false
        }
        return true
    }
    
    public override var hash: Int {
        var hasher = Hasher()
        hasher.combine(identifier)
        hasher.combine(functionType)
        hasher.combine(argumentNames)
        hasher.combine(body)
        hasher.combine(visibility)
        hasher.combine(super.hash)
        return hasher.finalize()
    }
    
    public override func makeIndentedDescription(depth: Int, wantsLeadingWhitespace: Bool = false) -> String {
        return String(format: "%@%@\n%@identifier: %@\n%@visibility: %@\n%@functionType: %@\n%@argumentNames: %@\n%@body: %@",
                      wantsLeadingWhitespace ? makeIndent(depth: depth) : "",
                      String(describing: type(of: self)),
                      makeIndent(depth: depth + 1),
                      identifier.makeIndentedDescription(depth: depth + 1),
                      makeIndent(depth: depth + 1),
                      visibility.description,
                      makeIndent(depth: depth + 1),
                      functionType.makeIndentedDescription(depth: depth + 1),
                      makeIndent(depth: depth + 1),
                      makeArgumentsDescription(depth: depth + 1),
                      makeIndent(depth: depth + 1),
                      body.makeIndentedDescription(depth: depth + 1))
    }
    
    private func makeArgumentsDescription(depth: Int) -> String {
        var result: String = ""
        if argumentNames.isEmpty {
            result = "none"
        } else {
            for i in 0..<argumentNames.count {
                let argument = argumentNames[i]
                result += "\n"
                result += makeIndent(depth: depth + 1)
                result += "\(i) -- \(argument)"
            }
        }
        return result
    }
}
