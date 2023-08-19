import Foundation

// Approiach 1:
func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count { return false }
    return s.sorted() == t.sorted()
}

//isAnagram("anagram", "nagaram") // true
//isAnagram("rat", "car") // false


// Approach 2:
func isAnagram_v2(_ s: String, _ t: String) -> Bool {
    if s.count != t.count { return false }
    var dict: [Character: Int] = [:]
    
    for char in s {
        dict[char, default: 0] += 1
        print(dict)
    }
    
    for char in t {
        if let count = dict[char], count > 0 {
            dict[char]! -= 1
        } else {
            return false
        }
    }
    
    return true
}

isAnagram_v2("anagram", "nagaram") // true
isAnagram_v2("rat", "car") // false


