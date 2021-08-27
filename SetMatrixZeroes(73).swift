//
//  SetMatrixZeroes(73).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    // 0 0 0 0
    //       /
    // 0 4 5 0
    //
    // 0 3 1 0
    
    
    func setZeroes(_ matrix: inout [[Int]]) {
        var zeroRows = Set<Int>()
        var zeroCols = Set<Int>()
        
        for row in 0..<matrix.count {
            for col in 0..<matrix[row].count {
                if matrix[row][col] == 0 {
                    zeroRows.insert(row)
                    zeroCols.insert(col)
                }
            }
        }
        
        for row in 0..<matrix.count {
            for col in 0..<matrix[row].count {
                if zeroRows.contains(row) || zeroCols.contains(col) {
                    matrix[row][col] = 0
                }
            }
        }
        print(matrix)
    }
}
