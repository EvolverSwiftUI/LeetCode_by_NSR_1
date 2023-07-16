import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    let sortedNums = nums.sorted()
    var result: Set<[Int]> = []
    
    let length = sortedNums.count
    
    for i in 0..<length {
        var left = i+1
        var right = length-1
        
        while left < right {
            let sum = sortedNums[i] + sortedNums[left] + sortedNums[right]
            if sum == 0 {
                result.insert([sortedNums[i], sortedNums[left], sortedNums[right]])
                left += 1
                right -= 1
            } else if sum > 0 {
                right -= 1
            } else {
                left += 1
            }
        }
    }
    
    return Array(result)
}

threeSum([-1,0,1,2,-1,-4]) // [[-1,-1,2],[-1,0,1]]
threeSum([0,1,1]) // []
threeSum([0,0,0]) // [[0,0,0]]
