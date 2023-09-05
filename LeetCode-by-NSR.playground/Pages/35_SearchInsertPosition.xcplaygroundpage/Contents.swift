import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    
    var index = nums.count // if target is beyond upper bound
    var first = 0
    var last = nums.count - 1
    
    while first <= last {
        var mid = (last+first)/2
        let num = nums[mid]
        // may be an answer
        if num >= target {
            index = mid
            last = mid - 1 // look for more small index on left
        } else  {
            first = mid + 1 // look for right
        }
    }
     
    return index
}


searchInsert([1,3,4,5], 5) // 3
searchInsert([1,3,5,6], 2) // 1
searchInsert([1,3,5,6], 7) // 4
