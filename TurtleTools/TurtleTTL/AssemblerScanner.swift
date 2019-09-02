//
//  AssemblerScanner.swift
//  TurtleTTL
//
//  Created by Andrew Fox on 8/20/19.
//  Copyright © 2019 Andrew Fox. All rights reserved.
//

import Cocoa

public class AssemblerScanner: Lexer {
    public required init(withString string: String) {
        super.init(withString: string)
        self.rules = [
            Rule(pattern: "\n") {
                let token = TokenNewline(lineNumber: self.lineNumber, lexeme: $0)
                self.lineNumber += 1
                return token
            },
            Rule(pattern: "((#)|(//))") {(lexeme: String) in
                self.advanceToNewline()
                return nil
            },
            Rule(pattern: ",") {
                TokenComma(lineNumber: self.lineNumber, lexeme: $0)
            },
            Rule(pattern: ":") {
                TokenColon(lineNumber: self.lineNumber, lexeme: $0)
            },
            Rule(pattern: "NOP\\b") {
                TokenNOP(lineNumber: self.lineNumber, lexeme: $0)
            },
            Rule(pattern: "CMP\\b") {
                TokenCMP(lineNumber: self.lineNumber, lexeme: $0)
            },
            Rule(pattern: "HLT\\b") {
                TokenHLT(lineNumber: self.lineNumber, lexeme: $0)
            },
            Rule(pattern: "JMP\\b") {
                TokenJMP(lineNumber: self.lineNumber, lexeme: $0)
            },
            Rule(pattern: "JC\\b") {
                TokenJC(lineNumber: self.lineNumber, lexeme: $0)
            },
            Rule(pattern: "ADD\\b") {
                TokenADD(lineNumber: self.lineNumber, lexeme: $0)
            },
            Rule(pattern: "LI\\b") {
                TokenLI(lineNumber: self.lineNumber, lexeme: $0)
            },
            Rule(pattern: "MOV\\b") {
                TokenMOV(lineNumber: self.lineNumber, lexeme: $0)
            },
            Rule(pattern: "STORE\\b") {
                TokenSTORE(lineNumber: self.lineNumber, lexeme: $0)
            },
            Rule(pattern: "LOAD\\b") {
                TokenLOAD(lineNumber: self.lineNumber, lexeme: $0)
            },
            Rule(pattern: "[ABCDEMXY]\\b") {
                TokenRegister(lineNumber: self.lineNumber, lexeme: $0, literal: $0)
            },
            Rule(pattern: "[_a-zA-Z][_a-zA-Z0-9]+\\b") {
                TokenIdentifier(lineNumber: self.lineNumber, lexeme: $0)
            },
            Rule(pattern: "[-]{0,1}[0-9]+\\b") {
                let scanner = Scanner(string: $0)
                var number: Int = 0
                let result = scanner.scanInt(&number)
                assert(result)
                return TokenNumber(lineNumber: self.lineNumber, lexeme: $0, literal: number)
            },
            Rule(pattern: "\\$[0-9a-fA-F]+\\b") {
                let scanner = Scanner(string: String($0.dropFirst()))
                var number: UInt32 = 0
                let result = scanner.scanHexInt32(&number)
                assert(result)
                return TokenNumber(lineNumber: self.lineNumber, lexeme: $0, literal: Int(number))
            },
            Rule(pattern: "0[xX][0-9a-fA-F]+\\b") {
                let scanner = Scanner(string: String($0))
                var number: UInt32 = 0
                let result = scanner.scanHexInt32(&number)
                assert(result)
                return TokenNumber(lineNumber: self.lineNumber, lexeme: $0, literal: Int(number))
            },
            Rule(pattern: "[ \t]+") {(lexeme: String) in
                nil
            }
        ]
    }
}
