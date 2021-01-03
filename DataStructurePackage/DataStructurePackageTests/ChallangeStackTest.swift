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
    
    func test_checkBrases() {
      XCTAssertTrue(checkParentheses("{}") )
    }
    
    func test_checkBrases1() {
      XCTAssertTrue(checkParentheses("hello{world}{}") )
    }
    
    func test_checkBrases2() {
      XCTAssertFalse(checkParentheses("{hello world") )
    }
    
    func test_checkBrases3() {
      XCTAssertFalse(checkParentheses("{{{}}{meow}}}{}}}") )
    }
    
    func test_checkParensAndBrases() {
      XCTAssertTrue(checkParentheses("{()}") )
    }
    
    func test_checkParens_usingArray() {
      XCTAssertTrue(checkParenthesesUsingArray("()") )
    }
    
    func test_checkParens1_usingArray() {
      XCTAssertTrue(checkParenthesesUsingArray("hello(world)()") )
    }
    
    func test_checkParens2_usingArray() {
      XCTAssertFalse(checkParenthesesUsingArray("(hello world") )
    }
    
    func test_checkParens3_usingArray() {
      XCTAssertFalse(checkParenthesesUsingArray("((())(meow)))()))") )
    }
    
    func test_checkBrases_usingArray() {
      XCTAssertTrue(checkParenthesesUsingArray("{}") )
    }
    
    func test_checkBrases1_usingArray() {
      XCTAssertTrue(checkParenthesesUsingArray("hello{world}{}") )
    }
    
    func test_checkBrases2_usingArray() {
      XCTAssertFalse(checkParenthesesUsingArray("{hello world") )
    }
    
    func test_checkBrases3_usingArray() {
      XCTAssertFalse(checkParenthesesUsingArray("{{{}}{meow}}}{}}}") )
    }
    
    func test_checkParensAndBrases_usingArray() {
      XCTAssertTrue(checkParenthesesUsingArray("{()}") )
    }
}

func checkParentheses(_ string: String) -> Bool {
    var stack = Stack<Character>()
    
    for character in string {
        if character == "(" || character == "{"  {
            stack.push(character)
        } else if character == ")" || character == "}" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
            
        }
    }
    
    return stack.isEmpty
}

func checkParenthesesUsingArray(_ string: String) -> Bool {
    var characters = [Character]()
    
    for character in string {
        if character == "(" || character == "{"  {
            characters.append(character)
        } else if character == ")" || character == "}" {
            if characters.isEmpty {
                return false
            } else {
                _ = characters.popLast()
            }
            
        }
    }
    
    return characters.isEmpty
}
