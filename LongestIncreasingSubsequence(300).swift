//
//  LongestIncreasingSubsequence(300).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        // create an array which represents the number of longest increasing-subsequence
        var subsequenceList = [Int](repeating: 1, count: nums.count)
        
        //
        for j in 1..<nums.count {
            for k in 0..<j {
                if nums[j] > nums[k] && subsequenceList[j] < subsequenceList[k] + 1 {
                    subsequenceList[j] = subsequenceList[k] + 1
                }
            }
        }
    
        print(subsequenceList)
        var longest = 0
        for i in 1..<subsequenceList.count {
            if subsequenceList[longest] < subsequenceList[i] {
                longest = i
            }
        }
            
        return subsequenceList[longest]
    }
}
