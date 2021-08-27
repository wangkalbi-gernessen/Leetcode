//
//  PlusOne(66).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        // use stack
        var stack = digits
        var stop = false
        // array for an answer
        var answer = [Int]()
        
        //
        while !stack.isEmpty {
            var u = stack.removeLast()
            
            if u != 9 {
                if stop == false {
                    u += 1
                    answer.insert(u, at: 0)
                    stop = true
                } else {
                    answer.insert(u, at: 0)
                }
            } else {
                if stop == false {
                    u = 0
                    answer.insert(u, at: 0)
                } else {
                    answer.insert(u, at: 0)
                }
            }
        }
        
        if stop == false {
            answer.insert(1, at: 0)
        }
        
        
        return answer
    }
}
