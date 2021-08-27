//
//  DiameterOfBinaryTree(543).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Node {
    var data: Int
    var leftChild: Node?
    var rightChild: Node?
    var diameter: Int = 0

    init(_ value: Int) {
        self.data = value
    }

    func diameterOfBinaryTree(_ root: Node?) -> Int {
        dfs(root)
        return diameter
    }

    func dfs(_ root: Node?) -> Int {
        guard let node = root else { return 0 }

        let left = dfs(node.leftChild)
        let right = dfs(node.rightChild)
        self.diameter = max(diameter, left + right)

        return max(left,right) + 1
    }
}
