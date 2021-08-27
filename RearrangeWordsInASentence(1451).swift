//
//  RearrangeWordsInASentence(1451).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-27.
//

import Foundation

class Solution {
    func arrangeWords(_ text: String) -> String {
        // Change all characters of string into lowercase
        let lowerCaseString = text.lowercased()
        // create splited array from text
        let splitString = lowerCaseString.split(separator: " ")
        // Ascend by string's length
        let arraySortByLength = splitString.sorted(by: {$0.count < $1.count})
        // Change all elements of array into string
        let answer = arraySortByLength.joined(separator: " ")
        // Change initial into uppercase
        return answer.capitalizingFirstLetter()
    }
}

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
