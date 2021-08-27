//
//  FindSmallestLetterGreaterThanTarget(744).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-27.
//

import Foundation

class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        let sortedLetters = letters.sorted(by: <)
        if target < sortedLetters[0] || target > sortedLetters[sortedLetters.count - 1] {
            return sortedLetters[0]
        }
        
        var low = 0
        var high = sortedLetters.count - 1
        var ans = 0
        
        while low <= high {
            let mid = (low + high) / 2
            if sortedLetters[mid] > target {
                high = mid - 1
                ans = mid
            } else {
                low = mid + 1
            }
        }
        return sortedLetters[ans]
    }
}
