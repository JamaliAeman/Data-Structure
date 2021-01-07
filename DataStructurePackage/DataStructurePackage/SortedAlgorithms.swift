//
//  SortedAlgorithms.swift
//  DataStructurePackage
//
//  Created by Aeman Jamali on 1/6/21.
//

// buble sort
func bubbleSort<Element: Comparable>(_ array: inout [Element]) {
    guard array.count >= 2 else {
        return
    }
    
    for end in (1..<array.count).reversed() {
        var swaped = false
        
        for count in 0..<end {
            if array[count] > array[count + 1] {
                array.swapAt(count, count + 1)
                swaped = true
            }
        }

        if !swaped {
            return
        }
    }
}

// slection sort
func selectionSort<Element: Comparable>(_ array: inout [Element]) {
    
    guard array.count >= 2 else {
        return
    }
    
    for current in 0..<(array.count - 1) {
        var lowest = current
        
        for other in (current + 1)..<(array.count) {
            if array[current] > array[other] {
                lowest = other
            }
        }
        
        if lowest != current {
            array.swapAt(lowest, current)
        }
        
    }
    
    
}
