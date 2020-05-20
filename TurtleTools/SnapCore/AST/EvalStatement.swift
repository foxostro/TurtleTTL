//
//  EvalStatement.swift
//  SnapCore
//
//  Created by Andrew Fox on 5/20/20.
//  Copyright © 2020 Andrew Fox. All rights reserved.
//

import TurtleCompilerToolbox

public class EvalStatement: AbstractSyntaxTreeNode {
    public let token: TokenEval
    public let expression: Expression
    
    public required init(token: TokenEval, expression: Expression) {
        self.token = token
        self.expression = expression
        super.init(children: [])
    }
    
    public override func isEqual(_ rhs: Any?) -> Bool {
        guard let rhs = rhs as? EvalStatement else { return false }
        guard token == rhs.token else { return false }
        guard expression == rhs.expression else { return false }
        return true
    }
}
