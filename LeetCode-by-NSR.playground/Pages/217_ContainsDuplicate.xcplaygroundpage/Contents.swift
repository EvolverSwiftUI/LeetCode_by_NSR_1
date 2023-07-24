import Foundation

// APPROACH 1: use array
func containsDuplicate(_ nums: [Int]) -> Bool {
    
    var unique: [Int] = []
    
    for num in nums {
        if unique.contains(num) {
            return true
        }
        unique.append(num)
    }
    
    return false
}

containsDuplicate([1,2,3,1]) // true
containsDuplicate([1,2,3,4]) // false
containsDuplicate([1,1,1,3,3,4,3,2,4,2]) // true


// APPROACH 2: use set
func containsDuplicate2(_ nums: [Int]) -> Bool {
    
    var unique: Set<Int> = []
    
    for num in nums {
        if unique.contains(num) {
            return true
        }
        unique.insert(num)
    }
    
    return false
}

containsDuplicate2([1,2,3,1]) // true
containsDuplicate2([1,2,3,4]) // false
containsDuplicate2([1,1,1,3,3,4,3,2,4,2]) // true


// APPROACH 3: use dictionary
func containsDuplicate3(_ nums: [Int]) -> Bool {
    
    var dict: [Int: Int] = [:]
    
    for num in nums {
        if dict[num] != nil {
            return true
        }
        dict[num] = 1
    }
    
    return false
}

containsDuplicate3([1,2,3,1]) // true
containsDuplicate3([1,2,3,4]) // false
containsDuplicate3([1,1,1,3,3,4,3,2,4,2]) // true


// APPROACH 4: use set with count
func containsDuplicate4(_ nums: [Int]) -> Bool {
    return nums.count != Set(nums).count
}

containsDuplicate4([1,2,3,1]) // true
containsDuplicate4([1,2,3,4]) // false
containsDuplicate4([1,1,1,3,3,4,3,2,4,2]) // true
