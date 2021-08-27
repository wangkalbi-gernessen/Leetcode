//
//  BinaryTreeLevelOrderTraversal(102).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-27.
//

import Foundation

//class TreeNode {
//
//    var data: Int
//    var leftChild: TreeNode?
//    var rightChild: TreeNode?
//    var answer = [[Int]]()
//
//    init(_ value: Int) {
//        self.data = value
//    }
//
//    // Using BFS
//    func levelOrder(_ root: TreeNode?) -> [[Int]] {
//        var queue = [TreeNode]()
//        guard let node = root else { return [] }
//        // insert root node into Queue at first
//        queue.append(node)
//
//        while !queue.isEmpty {
//            var subarr = [Int]()
//            for _ in 0..<queue.count {
//                let temp = queue.removeFirst()
//                subarr.append(temp.data)
//                if temp.leftChild != nil {
//                    queue.append(temp.leftChild!)
//                }
//                if temp.rightChild != nil {
//                    queue.append(temp.rightChild!)
//                }
//            }
//            answer.append(subarr)
//        }
//        return answer
//    }
//}
