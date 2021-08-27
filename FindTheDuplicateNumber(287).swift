//
//  FindTheDuplicateNumber(287).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    
    //  [3,1,3,4,2]
    //       /
    
    func findDuplicate(_ nums: [Int]) -> Int {
        // array for unique numbers
        var uniqueNums = Set<Int>()
        
        for num in nums { // -> O(n)
            if !uniqueNums.contains(num) { // -> O(n)
                uniqueNums.insert(num) // -> O(n)
            } else {
                return num
            }
        }
        return -1
    }
}
