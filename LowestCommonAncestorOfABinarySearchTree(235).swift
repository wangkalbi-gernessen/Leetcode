//
//  LowestCommonAncestorOfABinarySearchTree(235).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-27.
//

import Foundation

//class Node {
//    var data: Int
//    var leftChild: Node?
//    var rightChild: Node?
//    var parents: [Int:Int] = [:]
//
//    init(_ value: Int) {
//        self.data = value
//    }
//
    
//    func lowestCommonAncestor(_ root: Node?, _ p: Node?, _ q: Node?) -> Node? {
//        //        if root == nil {
//        //            return nil
//        //        }
//        //
//        //        if p?.data == q?.data {
//        //            return nil
//        //        }
//        //
//        //        if (p?.data == root?.data) || (q?.data == root?.data) {
//        //            return root
//        //        }
//        //
//        //        if ((p!.data < root!.data) && (q!.data > root!.data)) || ((p!.data > root!.data) && (q!.data < root!.data)) {
//        //            return root
//        //        }
//        //
//        //        if (p!.data < root!.data) && (q!.data < root!.data) {
//        //            return lowestCommonAncestor(root?.leftChild, p, q)
//        //        } else {
//        //            return lowestCommonAncestor(root?.rightChild, p, q)
//        //        }
//        if root == nil || root === p || root === q {
//            return root
//        }
//
//        // DFS recurse left and right
//        let left = lowestCommonAncestor(root?.leftChild, p, q)
//        let right = lowestCommonAncestor(root?.rightChild, p, q)
//
//        // if left is at a leaf, try to go right
//        // NOTE: right might be nil, let the base condition handle it
//        if left == nil {
//            return right
//        }
//
//        // if right is at a leaf, try to go left
//        // NOTE: left might be nil, let the base condition handle it
//        if right == nil {
//            return left
//        }
//
//        // both left and right are NOT nil,
//        // we have some common node that is not p or q
//        return root
//    }
//}
