//
//  BinaryTreePreorderTraversal(144).swift
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

    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let node = root else { return answer }

        answer.append(node.data)
        preorderTraversal(node.leftChild)
        preorderTraversal(node.rightChild)
        return answer
    }
}
