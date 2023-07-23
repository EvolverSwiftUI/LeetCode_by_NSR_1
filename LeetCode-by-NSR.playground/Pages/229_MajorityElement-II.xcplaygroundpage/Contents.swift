import Foundation

func majorityElement(_ nums: [Int]) -> [Int] {
    var result: [Int] = []
    var dict: [Int: Int] = [:]
    
    for num in nums {
        if dict[num] != nil {
            dict[num] = dict[num]! + 1
        } else {
            dict[num] = 1
        }
    }
    
    var k = 3
    for (key,value) in dict {
        if value > nums.count / 3 {
            result.append(key)
        }
    }
    
    return result
}

majorityElement([3,2,3]) // [3]
majorityElement([1]) // [1]
majorityElement([1,2]) // [1,2]
