//
//  MaximumDepthOfBinaryTree(104).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class TreeNode {
    var data: Int
    var leftChild: TreeNode?
    var rightChild: TreeNode?

    init(_ value: Int) {
        self.data = value
    }

    func maxDepth(_ root: TreeNode?) -> Int {
        // in case of non-node
        guard root != nil else { return 0 }

        // in case of only root node
        if root?.leftChild  == nil && root?.rightChild == nil {
            return 1
        }

        // in case of otherwise
        let leftDepth = maxDepth(root?.leftChild)
        let rightDepth = maxDepth(root?.rightChild)

        if leftDepth > rightDepth {
            return 1 + leftDepth
        }
        return 1 + rightDepth
    }
}
