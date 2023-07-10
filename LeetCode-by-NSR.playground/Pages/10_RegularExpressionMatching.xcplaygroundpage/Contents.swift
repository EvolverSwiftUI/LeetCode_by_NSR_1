import Foundation

func isMatch(_ s: String, _ p: String) -> Bool {
    
    var sChars: [Character] = Array(s)
    var pChars: [Character] = Array(p)
    
    return false
}

isMatch("aa", "a") // false
isMatch("aa", "a*") // true
isMatch("ab", ".*") // true
