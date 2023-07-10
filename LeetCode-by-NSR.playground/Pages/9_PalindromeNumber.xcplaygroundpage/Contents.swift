import Foundation

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 {
        return false
    }
    
    var n = x
    var output = 0
    
    while n > 0 {
        let last = n % 10
        n = n / 10
        output = output * 10 + last
    }

    return x == output
}

isPalindrome(121) // true
isPalindrome(-121) // false
isPalindrome(10) // false
