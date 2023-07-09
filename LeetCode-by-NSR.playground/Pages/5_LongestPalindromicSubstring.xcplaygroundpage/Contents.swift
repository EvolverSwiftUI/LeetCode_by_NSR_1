import Foundation

// Brute Force Approach
func longestPalindrome(_ s: String) -> String {
    var result = ""

    for i in 0..<s.count {
        let temp = getLongestPalindrome(i: i, s: s)
        if temp.count > result.count {
            result = temp
        }
    }
    
    return result
}

func getLongestPalindrome(i: Int, s: String) -> String {
    
    var left = i
    var right = i
    var sChars: [Character] = Array(s)
    
    // that char vs left char
    while (left - 1 >= 0 && sChars[left] == sChars[left-1]) {
        left -= 1
    }
    
    // that same char vs right char
    while (right + 1 < sChars.count && sChars[right] == sChars[right+1]) {
        right += 1
    }
    
    // that same char to left and right comparision
    while (left - 1 >= 0 && right + 1 < sChars.count && sChars[left-1] == sChars[right+1]) {
        left -= 1
        right += 1
    }
    
    return String(sChars[left...right])
}

longestPalindrome("babad") // aba or bab
longestPalindrome("cbbd") // bb
