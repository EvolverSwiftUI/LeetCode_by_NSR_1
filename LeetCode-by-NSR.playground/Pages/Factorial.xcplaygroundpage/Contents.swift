import Foundation

func getFactorial(of num: Int) -> Int {
    var result = 1
    
    for i in 1...num {
        result = result * i
    }
    
    return result
}

getFactorial(of: 3) // 6
getFactorial(of: 5) // 120
getFactorial(of: 13) // 6227020800
