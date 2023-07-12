import Foundation


// APPROACH 1:
func lengthOfLastWord(_ s: String) -> Int {
    var length = 0
    var words = s.split(separator: " ")
    if let last = words.last {
        length = last.count
    }
    return length
}


lengthOfLastWord("Hello World") // 5
lengthOfLastWord("   fly me   to   the moon  ") // 4
lengthOfLastWord("luffy is still joyboy") // 6



// APPROACH 2:
func lengthOfLastWord2(_ s: String) -> Int {
    var ans = 0

    for c in s.reversed() {
        if c != " " {
            ans += 1
        } else if ans > 0 {
            return ans
        }
    }

    return ans
}

lengthOfLastWord2("Hello World") // 5
lengthOfLastWord2("   fly me   to   the moon  ") // 4
lengthOfLastWord2("luffy is still joyboy") // 6
