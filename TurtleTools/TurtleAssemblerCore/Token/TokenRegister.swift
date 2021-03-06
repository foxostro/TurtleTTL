//
//  TokenRegister.swift
//  TurtleAssemblerCore
//
//  Created by Andrew Fox on 9/3/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import TurtleCompilerToolbox
import TurtleCore

public class TokenRegister : Token {
    public let literal: RegisterName
    
    public convenience init(literal: RegisterName) {
        self.init(sourceAnchor: nil, literal: literal)
    }
    
    public init(sourceAnchor: SourceAnchor?, literal: RegisterName) {
        self.literal = literal
        super.init(sourceAnchor: sourceAnchor)
    }
    
    public override var description: String {
        return String(format: "<%@: sourceAnchor=%@, lexeme=\"%@\", literal=%@>",
                      String(describing: type(of: self)),
                      String(describing: sourceAnchor),
                      lexeme,
                      String(describing: literal))
    }
    
    public override func isEqual(_ rhs: Any?) -> Bool {
        guard rhs != nil else { return false }
        guard type(of: rhs!) == type(of: self) else { return false }
        guard let rhs = rhs as? TokenRegister else { return false }
        guard isBaseClassPartEqual(rhs) else { return false }
        guard literal == rhs.literal else { return false }
        return true
    }
    
    public override var hash: Int {
        var hasher = Hasher()
        hasher.combine(literal)
        hasher.combine(super.hash)
        return hasher.finalize()
    }
}
