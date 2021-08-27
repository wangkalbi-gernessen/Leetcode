//
//  ValidParentheses(20).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

//class Solution {
//    func isValid(_ s: String) -> Bool {
//        // the number of s is odd
//        if s.count % 2 != 0 {
//            return false
//        }
//        
//        var stack:[String] = []
//        
//        for (index,char) in s.enumerated() {
//            if char == "(" {
//                stack.append(")")
//            } else if char == "{" {
//                stack.append("}")
//            } else if char == "[" {
//                stack.append("]")
//            } else {
//                let last = stack.popLast()
//                print(last)
//                if String(char) != last {
//                    return false
//                }
//            }
//        }
//        
//        return stack.count == 0
//    }
//}
