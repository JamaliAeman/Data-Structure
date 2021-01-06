//
//  QueueTest.swift
//  DataStructurePackageTests
//
//  Created by Aeman Jamali on 1/5/21.
//

import XCTest
@testable import DataStructurePackage

class QueueTest: XCTestCase {
    var queueArray = ArrayQueue<Int>()
    var queueStack = StackQueue<Int>()
    
    override func setUp() {
        queueArray.enqueue(1)
        queueArray.enqueue(2)
        queueArray.enqueue(3)
        queueArray.enqueue(4)
        
        queueStack.enqueue(1)
        queueStack.enqueue(2)
        queueStack.enqueue(3)
        queueStack.enqueue(4)
    }
    
    func test_queueArray_enqueue() {
        queueArray.enqueue(5)
        
        XCTAssertEqual(queueArray.peek, 1)
    }
    
    func test_queueArray_dequeue() {
        queueArray.dequeue()
        queueArray.dequeue()
        XCTAssertEqual(queueArray.peek, 1)
        queueArray.dequeue()
        queueArray.dequeue()
        XCTAssertEqual(queueArray.peek, nil)
    }
    
    func test_queueStack_enqueue() {
        queueStack.enqueue(5)
        
        XCTAssertEqual(queueStack.peek, 1)
    }
    
    func test_queueStack_dequeue() {
        queueStack.dequeue()
        queueStack.dequeue()
        XCTAssertEqual(queueArray.peek, 1)
        queueStack.dequeue()
        queueStack.dequeue()
        XCTAssertEqual(queueStack.peek, nil)
    }
}
