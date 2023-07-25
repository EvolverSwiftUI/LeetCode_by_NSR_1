import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 2 else { return 2 }
    
    var index = 1
    for i in 2..<nums.count {
        if nums[index] != nums[index-1] || nums[index] != nums[i] {
            index += 1
            nums[index] = nums[i]
        }
    }
    
    return index + 1
}

var nums = [1,1,1,2,2,3]
removeDuplicates(&nums) // 5
print(nums)

var nums2 = [0,0,1,1,1,1,2,3,3]
removeDuplicates(&nums2) // 7
print(nums2)
