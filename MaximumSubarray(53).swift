//
//  MaximumSubarray(53).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

//class Solution {
//    func maxSubArray(_ nums: [Int]) -> Int {
//        if nums.count == 1 {
//            return nums[0]
//        }
//
//        var maxSum = nums[0]
//        var sum = 0
//
//        for index in 0..<nums.count {
//            sum += nums[index]
//            if maxSum < sum {
//                maxSum = sum
//            }
//            if sum < 0 {
//                sum = 0
//            }
//
//        }
//        return maxSum
//    }
//}
