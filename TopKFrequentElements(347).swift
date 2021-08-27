//
//  TopKFrequentElements(347).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        
        var dict: [Int:Int] = [:]

        for num in nums {
            if let val = dict[num] {
                dict[num] = val + 1
            } else {
                dict[num] = 1
            }
        }
        
        let sortedByValue = dict.sorted { $0.value > $1.value }
        var answer: [Int] = []
        
        for value in sortedByValue {
            answer.append(value.key)
            
            if answer.count == k {
                break
            }
        }
    
        return answer
    }
}
