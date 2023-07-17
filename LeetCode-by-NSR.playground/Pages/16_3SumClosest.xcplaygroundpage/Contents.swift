import Foundation

func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    var sum = 0
    var numbers = nums.sorted()
    let length = numbers.count
    var minDiff: Int = .max
    
    for i in 0..<length-2 {
        var left = i+1
        var right = length-1
        
        while left < right {
            let newSum = numbers[i] + numbers[left] + numbers[right]
            
            if newSum == target {
                return target
            } else if newSum < target {
                left += 1
            } else {
                right -= 1
            }
            
            let newDiff = abs(target-newSum)
            if newDiff < minDiff {
                minDiff = newDiff
                sum = newSum
            }
        }
    }
    
    return sum
}

threeSumClosest([-1,2,1,-4], 1) // 2
threeSumClosest([0,0,0], 1) // 0
