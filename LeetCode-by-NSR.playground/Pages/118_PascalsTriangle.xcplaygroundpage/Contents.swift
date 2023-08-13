import Foundation

func generate(_ numRows: Int) -> [[Int]] {
    
    if numRows == 0 { return [] }

    var result: [[Int]] = []
    var previousRow: [Int] = []
    
    for row in 0..<numRows {
        if result.isEmpty { // first time it is empty, so add first row
            result.append([1])
        }
        else { // next time onwards create a new row and append it.
            var newRow: [Int] = [1]
            previousRow = result[row-1]
            for i in 0..<previousRow.count where i+1 < previousRow.count {
                let nextElement = previousRow[i] + previousRow[i+1]
                newRow.append(nextElement)
            }
            newRow.append(1)
            result.append(newRow)
        }
    }
    
    return result
}


generate(5) // [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
generate(1) // [[1]]
