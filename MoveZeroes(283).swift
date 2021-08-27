//
//  MoveZeroes(283).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        // nonZerovalue's index value
        var nonZeroIndices = 0
        
        for num in nums { // -> O(n)
            if num != 0 {
                nums[nonZeroIndices] = num
                nonZeroIndices += 1
            }
        }
        
//        print(nums)
        
        for j in nonZeroIndices..<nums.count { // -> O(n)
            nums[j] = 0
        }
        
        print(nums)
    }
}
