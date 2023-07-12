import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count <= 1 { return nums.count }

    var uniqueCount = 0
    var i = 0

    for j in 1..<nums.count {
        if  nums[i] == nums[j] { continue }
            uniqueCount += 1
            i += 1
            nums[i] = nums[j]
    }

    return uniqueCount + 1
}

var nums = [1,1,2]
removeDuplicates(&nums) //2
print(nums)

var nums2 = [0,0,1,1,1,2,2,3,3,4]
removeDuplicates(&nums2) //5
print(nums2)
