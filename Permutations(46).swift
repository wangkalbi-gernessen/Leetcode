//
//  Permutations(46).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

//class Solution {
//    func permute(_ nums: [Int]) -> [[Int]] {
//        var res = [[Int]]()
//        guard nums.count > 1 else {
//            return [nums]
//        }
//        for i in 0..<nums.count {
//            var shortNums = nums
//            shortNums.remove(at: i)
//            for num in permute(shortNums) {
//                res.append([nums[i]] + num)
//            }
//        }
//        return res
//    }
//}
