//
//  AbstractSyntaxTreeNode.swift
//  TurtleCompilerToolbox
//
//  Created by Andrew Fox on 8/22/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

open class AbstractSyntaxTreeNode : NSObject {
    public static func ==(lhs: AbstractSyntaxTreeNode, rhs: AbstractSyntaxTreeNode) -> Bool {
        return lhs.isEqual(rhs)
    }
    
    open override func isEqual(_ rhs: Any?) -> Bool {
        guard rhs != nil else { return false }
        guard type(of: rhs!) == type(of: self) else { return false }
        return true
    }
    
    open override var hash: Int {
        let hasher = Hasher()
        return hasher.finalize()
    }
    
    public override var description: String {
        return makeIndentedDescription(depth: 0)
    }
    
    open func makeIndentedDescription(depth: Int, wantsLeadingWhitespace: Bool = false) -> String {
        return String(format: "%@<%@>",
                      wantsLeadingWhitespace ? makeIndent(depth: depth) : "",
                      String(describing: type(of: self)))
    }
    
    public func makeIndent(depth: Int) -> String {
        return String(repeating: "\t", count: depth)
    }
}
