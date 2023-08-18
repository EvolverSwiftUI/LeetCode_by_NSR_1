import Foundation

func reverseString(_ s: inout [Character]) {
    if s.isEmpty { return }
    
    var start = 0
    var end = s.count-1
    
    while start <= end {
        let temp: Character = s[start]
        s[start] = s[end]
        s[end] = temp
        start += 1
        end -= 1
    }
}

var input1: [Character] = ["h","e","l","l","o"]
reverseString(&input1) // ["o","l","l","e","h"]

var input2: [Character] = ["H","a","n","n","a","h"]
reverseString(&input2) // ["h","a","n","n","a","H"]
