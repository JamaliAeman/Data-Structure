//
//  SortingAlgorithmsTest.swift
//  DataStructurePackageTests
//
//  Created by Aeman Jamali on 1/6/21.
//

import XCTest
@testable import DataStructurePackage

class SortingAlgorithmsTest: XCTestCase {
    var testArray = [Int]()
    var sortedArray = [3, 4, 9, 10]
    
    override func setUp() {
        testArray = [9, 4, 10, 3]
    }
    
    func test_bubble_sort() {
        bubbleSort(&testArray)
        XCTAssertEqual(sortedArray, testArray)
    }
    
    func test_bublle_sort_with_sortedArray() {
        bubbleSort(&sortedArray)
        XCTAssertEqual(sortedArray, sortedArray)
    }
}
