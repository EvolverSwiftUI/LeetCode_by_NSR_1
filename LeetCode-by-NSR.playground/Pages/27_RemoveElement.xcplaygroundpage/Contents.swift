import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var index = 0
    
    while(nums.indices.contains(index)) {
        if nums[index] == val {
            nums.remove(at: index)
        } else {
            index += 1
        }
    }
    
    return nums.count
}

var nums = [3,2,2,3]
removeElement(&nums, 3) // 2
print(nums)

var nums2 = [0,1,2,2,3,0,4,2]
removeElement(&nums2, 2) // 5
print(nums2)
