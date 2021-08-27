//
//  BinaryTreeInorderTraversal(94).swift
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

    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let node = root else { return answer }

        inorderTraversal(node.leftChild)
        answer.append(node.data)
        inorderTraversal(node.rightChild)

        return answer
    }
}
