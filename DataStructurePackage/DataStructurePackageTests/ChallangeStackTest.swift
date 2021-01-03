//
//  ChallangeStackTest.swift
//  DataStructurePackageTests
//
//  Created by Aeman Jamali on 1/2/21.
//

import XCTest
@testable import DataStructurePackage

class ChallangeStackTest: XCTestCase {
    func test_checkParens() {
      XCTAssertTrue(checkParentheses("()") )
    }
    
    func test_checkParens1() {
      XCTAssertTrue(checkParentheses("hello(world)()") )
    }
    
    func test_checkParens2() {
      XCTAssertFalse(checkParentheses("(hello world") )
    }
    
    func test_checkParens3() {
      XCTAssertFalse(checkParentheses("((())(meow)))()))") )
    }
}

func checkParentheses(_ string: String) -> Bool {
    var stack = Stack<Character>()
    
    for character in string {
        if character == "(" {
            stack.push(character)
        } else if character == ")" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
            
        }
    }
    
    return stack.isEmpty
}
