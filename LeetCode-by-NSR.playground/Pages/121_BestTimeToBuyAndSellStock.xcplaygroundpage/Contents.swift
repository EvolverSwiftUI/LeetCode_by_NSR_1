import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    if prices.isEmpty { return 0 }

    var minValue = Int.max
    var maxProfit = 0
    
    for price in prices {
        if price < minValue {
            minValue = price // here buy happed
        } else if price - minValue > maxProfit  { // now need to sell at max profit
            maxProfit = price - minValue
        }
    }
    
    return maxProfit
}

maxProfit([7,1,5,3,6,4]) // 5
maxProfit([7,6,4,3,1]) // 0
