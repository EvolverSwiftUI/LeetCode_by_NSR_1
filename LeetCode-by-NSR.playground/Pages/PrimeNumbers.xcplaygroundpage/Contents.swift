import Foundation

func getPrimeNumbers(_ nums: [Int]) -> [Int] {
    var result: [Int] = []
    
    func checkPrime(_ num: Int) -> Bool {
        if num <= 1 {
            return false
        }
        for i in 2..<num {
            if num % i == 0 {
                return false
            }
        }
        return true
    }
    
    // 1st approach:
    //for num in nums {
    //    if checkPrime(num) {
    //        result.append(num)
    //    }
    //}
    
    // 2nd apprioach:
    // the above code can be written as like below way using higher order function
    result = nums.filter { checkPrime($0) }
    
    return result
}

getPrimeNumbers([11, 97, 43, 24, 601, 444, 733]) // [11, 97, 43, 601, 733]
