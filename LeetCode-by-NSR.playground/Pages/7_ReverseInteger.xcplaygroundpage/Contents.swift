import Foundation

func reverse(_ x: Int) -> Int {
    var res = 0
    var num = x
    
    let isNegative = num < 0
    if isNegative {
        num = abs(x)
    }
    
    while num > 0 {
        let last = num % 10
        num = num / 10
        res = res * 10 + last
    }
    
    if isNegative {
        res = -1 * res
    }
    
    return (res < Int32.min || res > Int32.max) ? 0 : res
}

reverse(123) // 321
reverse(-123) // -321
reverse(120) // 21
