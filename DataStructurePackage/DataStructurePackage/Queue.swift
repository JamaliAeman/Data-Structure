//
//  Queue.swift
//  DataStructurePackage
//
//  Created by Aeman Jamali on 1/5/21.
//

// Queue Protocol
protocol Queue {
    associatedtype Element
    mutating func enqueue(_ element: Element)
    mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peek: Element? { get }
}

protocol BoardGameManager {
    associatedtype Player
    mutating func nextPlayer() -> Player?
}



// Implement queue using array example
struct ArrayQueue<T>: Queue {
    private var storage:[T] = []
    
    var isEmpty: Bool {
        storage.isEmpty
    }
    
    var peek: T? {
        return storage.first
    }
    
    mutating func enqueue(_ element: T) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        return isEmpty ? nil : storage.removeLast()
    }
}

extension ArrayQueue: BoardGameManager {
    typealias Player = T
    
    mutating func nextPlayer() -> Player? {
        guard let player = dequeue() else {
            return nil
        }
        enqueue(player)
        return player 
    }
}

// Impelment Queue using Stacks
struct StackQueue<T>: Queue {
    var enqueueArray:[T] = []
    var dequeueArray:[T] = []
    
    var isEmpty: Bool {
        return dequeueArray.isEmpty && enqueueArray.isEmpty
    }
    
    var peek: T? {
        return !dequeueArray.isEmpty ? dequeueArray.last : enqueueArray.first
    }
    
    mutating func enqueue(_ element: T) {
        enqueueArray.append(element)
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        if dequeueArray.isEmpty  {
            dequeueArray = enqueueArray.reversed()
            enqueueArray.removeAll()
        }
        return dequeueArray.popLast()
    }
}

extension StackQueue: BoardGameManager {
    typealias Player = T
    
    mutating func nextPlayer() -> Player? {
        guard let player = dequeue() else {
            return nil
        }
        
        enqueue(player)
        return player
    }
}
