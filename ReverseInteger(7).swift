//
//  ReverseInteger(7).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        if x == 0 {
            return 0
        }
        var sign = x.signum()
        var num = abs(x)
        var reverseNum = 0
        while num > 0 {
            reverseNum = reverseNum * 10 + num % 10
            num /= 10
        }
        if reverseNum > Int32.max || reverseNum < Int32.min {
            return 0
        }
        return reverseNum * sign
    }
}
