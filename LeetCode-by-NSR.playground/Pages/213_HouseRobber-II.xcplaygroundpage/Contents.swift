import Foundation

func rob(_ nums: [Int]) -> Int {
    if nums.isEmpty { return 0 }
    if nums.count < 3 { return nums.max()! }
    
    let housesA = Array(nums[0...nums.count-2])
    let housesB = Array(nums[1...nums.count-1])
    
    let maxA = maxMoney(housesA)
    let maxB = maxMoney(housesB)
    
    return max(maxA, maxB)
}

private func maxMoney(_ houses: [Int]) -> Int {
    var maxMoney = Array(repeating: 0, count: houses.count)
    maxMoney[0] = houses[0]
    maxMoney[1] = max(houses[0], houses[1])
    
    for i in 2..<houses.count {
        maxMoney[i] = max(maxMoney[i-2] + houses[i], maxMoney[i-1])
    }
    
    return maxMoney.last!
}


rob([2,3,2]) // 3
rob([1,2,3,1]) // 4
rob([1,2,3]) // 3

