import Foundation


// Brute Force Approach:
// TC - O(n^2)
func countPrimes(_ n: Int) -> Int {
    guard n >= 2  else { return 0 }
    
    var result = 0
    
    for i in 2..<n {
        var isPrime = true
        
        for j in 2..<i {
            if i % j == 0 {
                isPrime = false
            }
        }
        
        if isPrime {
            result += 1
        }
    }

    return result
}

countPrimes(10) // 4
countPrimes(0) // 0
countPrimes(1) // 0


// 2nd Approach:
// Took less time than previous above approach
func countPrimes_v2(_ n: Int) -> Int {
    guard n >= 2  else { return 0 }
    var tempArray: [Bool] = Array(repeating: true, count: n)

    
    for i in 2..<n {
        var j = i
        while j * i < n { // checking each num multiple, if available lessthan the given num, then make it non prime.
            tempArray[j * i] = false
            j += 1
        }
    }
    
    var result = 0
    for i in 2..<n {
        if tempArray[i] {
            result += 1
        }
    }

    return result
}
