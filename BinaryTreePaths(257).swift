//
//  BinaryTreePaths(257).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

class Node {

    var data: Int
    var leftChild: Node?
    var rightChild: Node?

    init(_ value: Int) {
        self.data = value
    }

    func binaryTreePaths(_ root: Node?) -> [String] {
        var paths = [String]()
        dfs(root, [String](), &paths)
        return paths
    }

    func dfs(_ root: Node?, _ path: [String], _ paths: inout [String]) {
        if root == nil {
            return
        }

        let path = path + [String(root!.data)]

        if root?.leftChild == nil && ((root?.rightChild) == nil) {
            paths.append(path.joined(separator: "->"))
        }

        dfs(root?.leftChild, path, &paths)
        dfs(root?.rightChild, path, &paths)
    }
}
