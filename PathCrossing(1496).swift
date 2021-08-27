//
//  PathCrossing(1496).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-27.
//

import Foundation

class Solution {
    func isPathCrossing(_ path: String) -> Bool {
        var x: Int = 0
        var y: Int = 0
        var coordinate: [[Int]] = [[x,y]]
        
        for (index, val) in path.enumerated() {
            if val == "N" {
                y += 1
            } else if val == "E" {
                x += 1
            } else if val == "S" {
                y -= 1
            } else {
                x -= 1
            }
            
            coordinate.append([x,y])
        }
        
        for i in 0..<coordinate.count {
            for j in i+1..<coordinate.count {
                if coordinate[i] == coordinate[j] {
                    return true
                }
            }
        }
        
        return false
    }
}
