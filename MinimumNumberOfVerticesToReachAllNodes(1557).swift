//
//  MinimumNumberOfVerticesToReachAllNodes(1557).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func findSmallestSetOfVertices(_ n: Int, _ edges: [[Int]]) -> [Int] {
        var adj = [[Int]](repeating: [], count: n)
        var indegrees = [Int](repeating: 0, count: n)
        
        for edge in edges {
            adj[edge[0]].append(edge[1])
            indegrees[edge[1]] += 1
        }
        //        print(adj)
        
        //insert indegree-zero's vertices into queue
        var queue: [Int] = []
        for i in 0..<n {
            if indegrees[i] == 0 {
                queue.append(i)
            }
        }

        return queue
    }
}
