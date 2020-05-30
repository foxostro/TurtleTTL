//
//  TokenNewline.swift
//  TurtleCompilerToolbox
//
//  Created by Andrew Fox on 9/3/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

public class TokenNewline : Token {
    public override var description: String {
        return String(format: "<%@: lineNumber=%d>", String(describing: type(of: self)), lineNumber)
    }
}
