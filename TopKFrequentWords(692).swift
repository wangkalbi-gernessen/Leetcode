//
//  TopKFrequentWords(692).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-27.
//

import Foundation

class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        let sortedArray = words.sorted(by: <)
        print(sortedArray)
        
        var dict: [String: Int] = [:]
        for item in sortedArray {
            if let val = dict[item] {
                dict[item] = val + 1
            } else {
                dict[item] = 1
            }
        }
        
        print(dict)
        
        let sortedByFrequent = dict.sorted { $0.value > $1.value || ($0.value == $1.value && $0.key < $1.key) }
        print(sortedByFrequent)
        
        var answer: [String] = []
        for item in sortedByFrequent {
            answer.append(item.key)
            if answer.count == k {
                break
            }
        }
                
        return answer
    }
}
