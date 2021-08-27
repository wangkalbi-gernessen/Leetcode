//
//  FloodFill(733).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        
        var matrix = image
        var visited = [[Bool]](repeating: [Bool](repeating: false, count: image[0].count), count: image.count)
        
        // queue which store pair of matrix
        var queue = [[Int]]()
        queue.append([sr,sc])
        visited[sr][sc] = true
        
        while !queue.isEmpty {
            let removed = queue.removeFirst()
            let r = removed[0]
            let c = removed[1]
            
            matrix[r][c] = newColor
            
            // search west of current pair
            if c - 1 >= 0 && visited[r][c - 1] == false && matrix[r][c - 1] == image[sr][sc] {
                queue.append([r, c - 1])
                visited[r][c - 1] = true
            }
            
            // search east of current pair
            if c + 1 < image[r].count && visited[r][c + 1] == false && matrix[r][c + 1] == image[sr][sc] {
                queue.append([r, c + 1])
                visited[r][c + 1] = true
            }
            
            // search north of current pair
            if r - 1 >= 0 && visited[r - 1][c] == false && matrix[r - 1][c] == image[sr][sc] {
                queue.append([r - 1, c])
                visited[r - 1][c] = true
            }
            
            // search south of current pair
            if r + 1 < image.count && visited[r + 1][c] == false && matrix[r + 1][c] == image[sr][sc] {
                queue.append([r + 1, c])
                visited[r + 1][c] = true
            }
        }
        
        return matrix
    }
}
