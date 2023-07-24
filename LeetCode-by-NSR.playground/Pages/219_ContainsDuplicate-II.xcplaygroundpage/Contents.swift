import Foundation

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var map: [Int: Int] = [:]
    
    for (index,num) in nums.enumerated() {
        if let firstIndex = map[num] {
            if abs(index-firstIndex) <= k {
                return true
            }
        }
        map[num] = index
    }
    
    return false
}

containsNearbyDuplicate([1,2,3,1], 3) // true
containsNearbyDuplicate([1,0,1,1], 1) // true
containsNearbyDuplicate([1,2,3,1,2,3], 2) // false
