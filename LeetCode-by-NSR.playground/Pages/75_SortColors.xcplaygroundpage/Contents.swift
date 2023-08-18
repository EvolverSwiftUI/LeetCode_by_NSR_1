import Foundation

func sortColors(_ nums: inout [Int]) {
    if nums.isEmpty { return }
    
    var start = 0
    var end = nums.count-1
    
    while start <= end {
        if nums[start] == 0, start > 0 {
            nums.remove(at: start)
            nums.insert(0, at: 0)
            start += 1
        } else if nums[start] == 2, start < end {
            nums.remove(at: start)
            nums.append(2)
            end -= 1
        } else {
            start += 1
        }
    }
}

var input1 = [2,0,2,1,1,0]
sortColors(&input1) // [0,0,1,1,2,2]

var input2 = [2,0,1]
sortColors(&input2) // [0,1,2]
