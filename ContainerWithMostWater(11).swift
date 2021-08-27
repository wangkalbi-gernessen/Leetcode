//
//  ContainerWithMostWater(11).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-26.
//

import Foundation

//class Solution {
//    // 4 /       /
//    // 3 / /     /
//    // 2 / / /   /
//    // 1 / / / / /
//    // 0 0 1 2 3 4
//    //   /   /
//    // [4,3,2,1,4]
//    
//    func maxArea(_ height: [Int]) -> Int {
//        var maxContainer = 0
//        var startPoint = 0
//        var endPoint = height.count - 1
//        
//        while startPoint <= endPoint {
//            maxContainer = max(maxContainer, (endPoint - startPoint)*min(height[startPoint], height[endPoint]))
//            
//            if height[startPoint] < height[endPoint] {
//                startPoint += 1
//            } else {
//                endPoint -= 1
//            }
//        }
//        return maxContainer
//    }
//}
