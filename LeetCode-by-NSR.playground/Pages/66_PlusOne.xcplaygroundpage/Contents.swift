import Foundation


// let a = 17/10 (quotient) <= drops last digit 7 hence returns 1
// let b = 17%10 (remainder) <= returns last digit 7



// this approach not works for large sized array,
// as bcz the sum overflow the int32 bit max size.
func plusOne(_ digits: [Int]) -> [Int] {
    var result: [Int] = []
    var num = 0
    for digit in digits {
        num = num*10 + digit
    }
    num += 1
    var sum = num
    
    while sum > 0 {
        let last = sum % 10
        result.append(last)
        sum = sum/10
    }
    
    return result.reversed()
}

plusOne([1,2,3]) // [1,2,4]
plusOne([4,3,2,1]) // [4,3,2,2]
plusOne([9]) // [1,0]


// Approiach 02: it works for large size arrys also
func plusOne2(_ digits: [Int]) -> [Int] {
    var result = digits
    var offset = 1 // works as a carry forward for each iteration
    
    for i in stride(from: result.count-1, through: 0, by: -1) {
        var num = result[i]
        num += offset
        offset = num/10
        num = num%10
        result[i] = num
    }
    
    if offset > 0 { result.insert(offset, at: 0) }
    
    return result
}

plusOne2([1,2,3]) // [1,2,4]
plusOne2([4,3,2,1]) // [4,3,2,2]
plusOne2([9]) // [1,0]



