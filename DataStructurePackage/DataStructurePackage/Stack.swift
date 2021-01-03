//
//  Stack.swift
//  DataStructurePackage
//
//  Created by Aeman Jamali on 1/2/21.
//

struct Stack<Element: Equatable>: Equatable {
    // Step 1: Store
    var storage: [Element] = []
    var isEmpty: Bool {
        // when can also use storage.isEmpty
        return peek() == nil
    }
    
    // helps to create empty stack
    init(){}
    
    init(_ storage: [Element]){
        self.storage = storage
    }
    
    // Step 2: Push
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    // Step 3: Pop
    @discardableResult
    mutating func pop() -> Element? {
        return storage.popLast()
    }
    
    func peek() -> Element? {
        return storage.last
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        return storage.map { "\($0)"}
            .joined(separator: " ")
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        storage = elements
    }
}

