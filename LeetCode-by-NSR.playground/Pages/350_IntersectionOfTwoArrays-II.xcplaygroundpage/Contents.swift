import Foundation


func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    
    
    var result: [Int] = []
    
    if nums1.count > nums2.count {
        result = findIntersect(nums1, nums2)
    } else {
        result = findIntersect(nums2, nums1)
    }

    func findIntersect(_ largeArr: [Int], _ smallArr: [Int]) -> [Int] {
        
        var output: [Int] = []
        var map: [Int: Int] = [:]

        for item in largeArr {
            if map[item] != nil {
                map[item] = map[item]! + 1
            } else {
                map[item] = 1
            }
        }
        
        for item in smallArr {
            if map[item] != nil {
                print(item)
                output.append(item)
                map[item] = map[item]! - 1
                if map[item]! == 0 {
                    map[item] = nil
                }
            }
        }
        
        return output
    }
    
    return result
}


intersect([1,2,2,1], [2,2]) // [2,2]
intersect([4,9,5], [9,4,9,8,4]) // [4,9]

