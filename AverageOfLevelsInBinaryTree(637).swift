//
//  AverageOfLevelsInBinaryTree(637).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class TreeNode {

    var data: Int
    var leftChild: TreeNode?
    var rightChild: TreeNode?
    var answer = [[Int]]()

    init(_ value: Int) {
        self.data = value
    }

    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        guard let node = root else { return [] }

        var queue: [TreeNode] = []
        queue.append(node)

        while !queue.isEmpty {
            var subarray = [Int]()
            for _ in 0..<queue.count {
                let temp = queue.removeFirst()
                subarray.append(temp.data)

                if temp.leftChild != nil {
                    queue.append(temp.leftChild!)
                }

                if temp.rightChild != nil {
                    queue.append(temp.rightChild!)
                }
            }
            answer.append(subarray)
        }

        var result: [Double] = []
        for i in 0..<answer.count {
            var sum: Double = 0
            var count: Int = 0
            for j in 0..<answer[i].count {
                sum += Double(answer[i][j])
                count += 1
            }
            sum = sum / Double(count)
            result.append(sum)
        }
        return result
    }
}
