import Foundation

// O(n^2)
func majorityElement(_ nums: [Int]) -> Int {
    var result = 0
    var majorityElement = 0
    var globalCount = 0
    
    let count = nums.count/2
    
    for num1 in nums {
        var countOfEachNum = 0
        for num2 in nums {
            if num1 == num2 {
                countOfEachNum += 1
                if countOfEachNum >= count && globalCount < countOfEachNum {
                    result = num1
                    globalCount = countOfEachNum
                }
            }
        }
    }
    
    return result
}

majorityElement([3,2,3]) // 3
majorityElement([2,2,1,1,1,2,2]) // 2
majorityElement([2,2,1,1,1,2,2,1,1,1,1]) // 1


// APPROACH 2 - Best Approach
// O(n)
func majorityElement2(_ nums: [Int]) -> Int {
    var result = 0
    var count = 0
    
    for num in nums {
        if count == 0 {
            count += 1
            result = num
        } else if result == num {
            count += 1
        } else {
            count -= 1
        }
    }
    
    return result
}

majorityElement2([3,2,3]) // 3
majorityElement2([2,2,1,1,1,2,2]) // 2
majorityElement2([2,2,1,1,1,2,2,1,1,1,1]) // 1
