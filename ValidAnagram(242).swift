//
//  ValidAnagram(242).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        let s_sorted = s.sorted(by: < )
        let t_sorted = t.sorted(by: < )
        print(s_sorted)
        print(t_sorted)
        
        if s_sorted == t_sorted {
            return true
        } else {
            return false
        }
    }
}
