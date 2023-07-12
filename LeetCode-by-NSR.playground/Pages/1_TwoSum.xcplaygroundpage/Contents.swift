import Foundation

// brute forch approach
// O(n^2)
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result: [Int] = []
    
    for i in 0..<nums.count {
        for j in 0..<nums.count {
            if i != j {
                if nums[i] + nums[j] == target {
                    if result.contains(i) == false && result.contains(j) == false {
                        result.append(contentsOf: [i,j])
                    }
                }
            }
        }
    }
    
    return result
}


// 2nd approach
func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
    var result: [Int] = []
    var dict: [Int: Int] = [:]
    
    for i in 0..<nums.count {
        dict[nums[i]] = i
    }
    
    for k in 0..<nums.count {
        if dict[target - nums[k]] != nil {
            let firstIndex = dict[target - nums[k]]!
            result.append(contentsOf: [firstIndex, k])
        }
    }
    
    return result
}

// 3rd approach - the best one among three approaches
func twoSum3(_ nums: [Int], _ target: Int) -> [Int] {
    var result: [Int] = []
    var dict: [Int: Int] = [:]

    for (index, value) in nums.enumerated() {
        if let firstIndex = dict[target - value] {
            return [firstIndex, index]
        }
        dict[value] = index
    }
    return result
}

twoSum3([11,7,5,2], 9)
twoSum3([3,2,4], 6)
