//
//  BinaryTreePostorderTraversal(145).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class TreeNode {

    var data: Int
    var leftChild: TreeNode?
    var rightChild: TreeNode?
    var answer: [Int] = []

    init(_ value: Int) {
        self.data = value
    }

    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let node = root else { return answer }

        postorderTraversal(node.leftChild)
        postorderTraversal(node.rightChild)
        answer.append(node.data)
        return answer
    }
}
