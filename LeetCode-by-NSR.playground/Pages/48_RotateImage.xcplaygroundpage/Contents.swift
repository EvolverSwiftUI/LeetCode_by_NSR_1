import Foundation


func rotate(_ matrix: inout [[Int]]) {
    
    if matrix.isEmpty { return }
    
    let count = matrix.count
    
    // swap diagonally based on diagonally mid value
    for i in 0..<count {
        for j in i..<count {
            let temp = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = temp
        }
    }
    print(matrix)

    // swap each row based on mid value
    for i in 0..<count {
        for j in 0..<count/2 {
            let temp = matrix[i][j]
            matrix[i][j] = matrix[i][count-1-j]
            matrix[i][count-1-j] = temp
        }
    }
    print(matrix)
}

var input = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

rotate(&input)

// Output:
/*
     [
        [7, 4, 1],
        [8, 5, 2],
        [9, 6, 3]
     ]
 */
