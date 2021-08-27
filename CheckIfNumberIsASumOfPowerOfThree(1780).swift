//
//  CheckIfNumberIsASumOfPowerOfThree(1780).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func checkPowersOfThree(_ n: Int) -> Bool {
        var currSum = n
        
        if currSum == 0 {
            return true
        }
        
        while (currSum % 3 == 0) {
            currSum /= 3
        }
        
        if currSum % 3 != 1 {
            return false
        }
        
        return checkPowersOfThree(currSum - 1)
    }
}
