//
//  main.swift
//  FindTheParityOutlier(6kyu)
//
//  Created by Eugene Maltsev on 16.12.2020.
//

//You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.


import Foundation


func findOutlier(_ array: [Int]) -> Int {
    
    if array.count > 3 {
        var remainder = [Int]()
        let numbers = Array(array.prefix(3))
        
        for i in numbers {
            remainder.append(i % 2)
        }
        
        if remainder.reduce(0,+) > 1 {
            for i in array {
                if i % 2 == 0 {
                    return i
                }
            }
        } else {
            for i in array {
                if i % 2 == 1 {
                    return i
                }
        }

        
        }
        
        return -1
    } else {
        return -1
    }
}

print(findOutlier([1, 33, 10053359313, 2, 1, 1, 1, 1, 1, 1, -3, 9])) // 2
print(findOutlier([8, 80, 14, 2, 20, 0, 21, 80])) // 21
