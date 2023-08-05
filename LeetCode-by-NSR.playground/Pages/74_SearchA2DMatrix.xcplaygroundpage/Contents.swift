import Foundation

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    
    if matrix.isEmpty { return false }
    
    let rows = matrix.count
    let columns = matrix[0].count
    
    var start = 0
    var end = rows * columns - 1
    
    while start <= end {
        let mid = start + (end-start)/2
        print("midPointer: ",mid)
        
        print("row:",mid/columns)
        print("column:",mid%columns)

        let midVal = matrix[mid/columns][mid%columns]
        print("midVal", midVal)
        if midVal == target { return true }
        
        if midVal > target {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    
    return false
}

searchMatrix(
    [
        [1,3,5,7],
        [10,11,16,20],
        [23,30,34,60]
    ] ,
    3) // true

print("\n======\n")

searchMatrix(
    [
        [1,3,5,7],
        [10,11,16,20],
        [23,30,34,60]
    ],
    13) // false

