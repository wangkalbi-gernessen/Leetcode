//
//  MajorityElement(169).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-27.
//

import Foundation

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        // empty dictionary [element: the number of the appearance of the element]
        var dict = [Int:Int]()
        
        // append the number of appearance of the element into dict
        for i in nums {
            if dict[i] == nil {
                dict[i] = 1
            } else {
                dict[i]! += 1
            }
        }
        
//        print(dict)
        
        // check if the number of the apperance of each element is more than half of the number of all elements
        var answer = 0
        
        for j in dict {
            if j.value > nums.count / 2 {
                answer = j.key
            }
        }
        
        return answer
    }
}
