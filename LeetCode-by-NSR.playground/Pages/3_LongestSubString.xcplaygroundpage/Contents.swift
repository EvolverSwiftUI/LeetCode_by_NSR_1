import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    if s.isEmpty { return 0 }

    var subStr: [Character] = []
    var maxCount = 0
    
    for char in s {
        if let index = subStr.firstIndex(of: char) {
            // removes chars from 0 to that first indexed char
            // which is repeated now.
            subStr.removeSubrange(0...index)
        }
        subStr.append(char)
        maxCount = max(subStr.count, maxCount)
    }

    return maxCount
}

lengthOfLongestSubstring("abcabcbb") //3 <--- "abc"
lengthOfLongestSubstring("bbbbb") //1 <--- "b"
lengthOfLongestSubstring("pwwkew") //3 <--- "wke"


