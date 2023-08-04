import Foundation

func rotate(_ nums: inout [Int], _ k: Int) {
    if nums.isEmpty { return }
    if k == 0 { return }
    
    for i in 0..<k {
        let num = nums.last!
        nums.removeLast()
        nums.insert(num, at: 0)
    }
}


var nums1 = [1,2,3,4,5,6,7]
rotate(&nums1, 3) // [5,6,7,1,2,3,4]

var num2 = [-1,-100,3,99]
rotate(&num2, 2) // [3,99,-1,-100]


// 2nd approach

func rotate_v2(_ nums: inout [Int], _ k: Int) {
    if nums.isEmpty { return }
    if k == 0 { return }
    
    // pivot
    // rotate entire array
    // rotate before pivot
    // rotate after pivot
    
    let pivot = k % nums.count
    swap(&nums, 0, nums.count-1)
    swap(&nums, 0, pivot-1)
    swap(&nums, pivot, nums.count-1)

    func swap(_ nums: inout [Int], _ start: Int, _ end: Int) {
        var start = start
        var end = end
        
        while start < end {
            nums.swapAt(start, end)
            start += 1
            end -= 1
        }
    }
}

var num3 = [1,2,3,4,5,6,7]
rotate_v2(&num3, 3) // [5,6,7,1,2,3,4]

var num4 = [-1,-100,3,99]
rotate_v2(&num4, 2) // [3,99,-1,-100]
