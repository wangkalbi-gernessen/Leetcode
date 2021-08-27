//
//  KeysAndRooms(841).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Solution {
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
        var visited = [Bool](repeating: false, count: rooms.count)
        let adj = rooms
        
        var queue = [Int]()
        queue.append(0)
        visited[0] = true
        
        while !queue.isEmpty {
            let u = queue.removeFirst()
            
            for i in adj[u] {
                if !visited[i] {
                    visited[i] = true
                    queue.append(i)
                }
            }
        }
        
        for i in visited {
            if i == false {
                return false
            }
        }
        
        return true
    }
}
