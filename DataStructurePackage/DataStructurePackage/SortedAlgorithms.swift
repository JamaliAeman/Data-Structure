//
//  SortedAlgorithms.swift
//  DataStructurePackage
//
//  Created by Aeman Jamali on 1/6/21.
//

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
