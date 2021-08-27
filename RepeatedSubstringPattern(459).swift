//
//  RepeatedSubstringPattern(459).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        var newString = s + s
//        print(newString)
        newString.removeLast()
        newString.removeFirst()
        
//        print(newString)
        
        if newString.contains(s) {
            return true
        }
        
        return false
    }
}
