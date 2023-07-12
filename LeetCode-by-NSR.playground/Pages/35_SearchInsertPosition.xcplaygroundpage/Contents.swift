import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    
    var index = 0
    var first = 0
    var last = nums.count - 1
    
    while first <= last {
        var mid = (last-first)/2 + first
        let num = nums[mid]
        if target < num {
            last = mid - 1
        } else if target > num {
            first = mid + 1
        } else {
            index = mid
            break
        }
   }
    
    index = first
    
    return index
}


//searchInsert([1,3,4,5], 5) // 2
searchInsert([1,3,5,6], 2) // 1
//searchInsert([1,3,5,6], 7) // 4
