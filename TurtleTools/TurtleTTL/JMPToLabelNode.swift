//
//  JMPToLabelNode.swift
//  TurtleTTL
//
//  Created by Andrew Fox on 8/22/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

public class JMPToLabelNode: AbstractSyntaxTreeNode {
    public let identifier: Token
    
    public init(token identifier: Token) {
        self.identifier = identifier
        super.init(children: [])
    }

    public override func accept(visitor: AbstractSyntaxTreeNodeVisitor) throws {
        try visitor.visit(node: self)
    }
    
    public override func isEqual(_ rhs: Any?) -> Bool {
        guard let rhs = rhs as? JMPToLabelNode else { return false }
        return identifier == rhs.identifier
    }
}