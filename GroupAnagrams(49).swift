//
//  GroupAnagrams(49).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [String: [String]]()
        var ans = [[String]]()

        for str in strs {
            let sortedWord = str.sorted(by: < ).map {String($0)}.joined()
//            print(sortedWord)
            if dict[sortedWord] == nil {
                dict[sortedWord] = [str]
            } else {
                dict[sortedWord]?.append(str)
            }
        }
//        print(dict)

        for j in dict {
            ans.append(j.value)
        }

        return ans
    }
}
