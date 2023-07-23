import Foundation

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var result: Set<Int> = []
    
    for num in nums1 {
        if nums2.contains(num) {
            result.insert(num)
        }
    }
    
    return Array(result)
}

intersection([1,2,2,1], [2,2]) // [2]
intersection([4,9,5], [9,4,9,8,4]) // [9,4]



// Approach 2:
func intersection2(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var set1: Set<Int> = []
    var set2: Set<Int> = []

    for num in nums1 {
        set1.insert(num)
    }
    
    for num in nums2 {
        set2.insert(num)
    }

    return Array(set1.intersection(set2))
}

intersection2([1,2,2,1], [2,2]) // [2]
intersection2([4,9,5], [9,4,9,8,4]) // [9,4]

