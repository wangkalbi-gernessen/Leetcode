//
//  HappyNumber(202).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func isHappy(_ n: Int) -> Bool {
        var sums = [Int]()
        var val = n
        while val != 1 {
            var sum = 0
            while val > 0 {
                let remainder = val % 10
                sum += remainder * remainder
                val /= 10
            }
            
            if !sums.contains(sum) {
                sums.append(sum)
            } else {
                return false
            }
            
            val = sum
        }
        return true
    }
}
