//
//  StackTest.swift
//  DataStructurePackageTests
//
//  Created by Aeman Jamali on 1/2/21.
//

import XCTest
@testable import DataStructurePackage

class StackTest: XCTestCase {
    var stack = Stack<Int>()
    
    override func setUp() {
        stack.push(1)
        stack.push(2)
        stack.push(3)
        stack.push(4)
    }
    
    func test_stack_description_matches() {
        XCTAssertEqual(stack.description, "1 2 3 4")
    }
    
    func test_pop() {
        XCTAssertEqual(stack.pop(), 4)
    }
    
    func test_peek() {
        XCTAssertEqual(stack.peek(), 4)
    }
    
    func test_stack_isEmpty() {
        XCTAssertFalse(stack.isEmpty)
    }
    
    func test_stack_init_withArray() {
        let array = [1, 2, 3, 4]
        
        XCTAssertEqual(stack, Stack(array))
    }
    
    func test_create_stack_using_array() {
        let stack: Stack = ["Mango", "Avcado", "Apple"]
        
        XCTAssertEqual(stack, ["Mango", "Avcado", "Apple"])
    }
    
    func test_stack_arrayLiteral() {
        let stack: Stack = Stack(arrayLiteral: ["Mango", "Avcado", "Apple"])
        
        XCTAssertFalse(stack.isEmpty)
    }
}


