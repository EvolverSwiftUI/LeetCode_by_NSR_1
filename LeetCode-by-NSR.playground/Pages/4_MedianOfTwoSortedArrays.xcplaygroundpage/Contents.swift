import Foundation

/*
 Find Median:
    if total count is odd   => midnumber/2
    if total count is even  => (midnumber + nextNumber)/2
*/

// Brute Force Approach
func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    
    var merge: [Int] = []
    
    var i = 0
    var j = 0
    
    while i < nums1.count && j < nums2.count {
        if nums1[i] < nums2[j] {
            merge.append(nums1[i])
            i += 1
        } else if nums2[j] < nums1[i] {
            merge.append(nums2[j])
            j += 1
        } else {
            merge.append(nums1[i])
            i += 1
        }
    }
    
    while i < nums1.count {
        merge.append(nums1[i])
        i += 1
    }
    
    while j < nums2.count {
        merge.append(nums2[j])
        j += 1
    }
        
    var result: Double = 0.0
    let mid = merge.count / 2
    if merge.count % 2 == 0 {
        let val = merge[mid] + merge[mid-1]
        result = Double(val) / 2.0
    } else {
        result = Double(merge[mid])
    }
    
    return result
}

findMedianSortedArrays([1,3], [2]) //2.000000
findMedianSortedArrays([1,2], [3,4]) //2.500000
