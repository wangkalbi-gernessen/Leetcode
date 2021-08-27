//
//  LastStoneWeight(1046).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-27.
//

import Foundation

class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var stones = stones
        
        while stones.count > 1 {
            var sortedByValue = stones.sorted { $0 > $1 }
            
            let first = sortedByValue[0]
            let second = sortedByValue[1]
            
            if first > second {
                let gap = first - second
                sortedByValue.removeSubrange(0...1)
                sortedByValue.insert(gap, at: 0)
            } else {
                sortedByValue.removeSubrange(0...1)
            }
            stones = sortedByValue
        }
        // if stones's length is 0, return 0
        if stones.count == 0 {
            return 0
        }
        return stones[0]
    }
}
