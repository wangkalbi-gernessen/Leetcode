//
//  SameTree(100).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

//class TreeNode {
//    var data: Int
//    var leftChild: TreeNode?
//    var rightChild: TreeNode?
//
//    init(_ value: Int) {
//        self.data = value
//    }
//
//    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
//        // the other tree
//        if (p != nil && q == nil) || (p == nil && q != nil) {
//            return false
//        }
//
//        if p == nil && q == nil {
//            return true
//        }
//
//        if p?.data != q?.data {
//            return false
//        }
//
//        return isSameTree(p?.leftChild, q?.leftChild) && isSameTree(p?.rightChild, q?.rightChild)
//    }
//}
