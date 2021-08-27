//
//  FirstUniqueCharacterInAString(387).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dict = [Character:Int]()
        
        for char in s {
            if dict[char] != nil {
                dict[char]! += 1
            } else {
                dict[char] = 1
            }
        }
        
        print(dict)
        
        for (index, char) in s.enumerated() {
            if dict[char] == 1 {
                return index
            }
        }
        
        return -1
    }
}
