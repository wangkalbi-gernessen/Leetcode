//
//  SearchA2DMatrixII(240).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        // search all rows
        for row in 0..<matrix.count {
            // search all elements of column matrix
            for column in 0..<matrix[row].count {
                if matrix[row][column] == target {
                    return true
                }
            }
        }
        
        return false
    }
}
