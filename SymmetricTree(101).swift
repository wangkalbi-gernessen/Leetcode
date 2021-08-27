//
//  SymmetricTree(101).swift
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

    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let node = root else { return true }
        return isSymmetric(node.leftChild, node.rightChild)
    }

    func isSymmetric(_ leftRoot: TreeNode?, _ rightRoot: TreeNode?) -> Bool {
        if leftRoot == nil && rightRoot == nil {
            return true
        }

        if leftRoot?.data != rightRoot?.data {
            return false
        }

        return isSymmetric(leftRoot?.leftChild, rightRoot?.rightChild) && isSymmetric(leftRoot?.rightChild, rightRoot?.leftChild)
    }
}
