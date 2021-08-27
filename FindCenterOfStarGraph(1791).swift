//
//  FindCenterOfStarGraph(1791).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        
        let firstItem = edges[0][0]
        let secondItem = edges[0][1]
        var firstConnectedCount = 0
        var secondConnectedCount = 0
        
        for item in edges {
            if item.contains(firstItem) {
                firstConnectedCount += 1
            }
            
            if item.contains(secondItem) {
                secondConnectedCount += 1
            }
        }
        
        if firstConnectedCount == edges.count {
            return firstItem
        }
        return secondItem
    }
}
