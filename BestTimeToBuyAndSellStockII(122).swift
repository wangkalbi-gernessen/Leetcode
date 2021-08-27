//
//  BestTimeToBuyAndSellStockII(122).swift
//  Leetcode
//
//  Created by Kazunobu Someya on 2021-08-27.
//

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices == nil || prices.count <= 0 {
            return 0
        }

        var profit = 0

        for i in 1..<prices.count {
            if prices[i-1] < prices[i] {
                profit += prices[i] - prices[i-1]
            }
        }

        return profit
    }
}
