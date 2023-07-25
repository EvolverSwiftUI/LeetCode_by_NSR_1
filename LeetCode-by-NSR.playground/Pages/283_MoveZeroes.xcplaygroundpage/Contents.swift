import Foundation

func moveZeroes(_ nums: inout [Int]) {
    
    guard nums.count > 1 else { return }
    
    var index = 0
    for num in nums {
        if num != 0 {
            nums[index] = num
            index += 1
        }
    }
    
    for i in index..<nums.count {
        nums[i] = 0
    }
}

var nums = [0,1,0,3,12]
moveZeroes(&nums) // [1,3,12,0,0]
print(nums)

var nums2 = [0]
moveZeroes(&nums2) // [0]
print(nums2)
