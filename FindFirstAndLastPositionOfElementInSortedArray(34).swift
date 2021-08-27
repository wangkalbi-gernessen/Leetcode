//
//  FindFirstAndLastPositionOfElementInSortedArray(34).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var first = -1
        var last = -1
        for index in 0..<nums.count {
            if target != nums[index]  {
                continue
            }
            if first == -1 {
                first = index
            }
            last = index
        }
        let res:[Int] = [first,last]
        return res
    }
}
