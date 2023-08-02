import Foundation

func removeKdigits(_ num: String, _ k: Int) -> String {
    
    var stack: [Character] = []
    let size = num.count - k
    var k = k
        
    for char in num { //2143 ===> in this case remove from left
        while k > 0 && !stack.isEmpty && stack.last! > char {
            stack.popLast()
            k -= 1
        }
        
        if !(stack.isEmpty && char == "0") { // avoid leading zeros, just ignore
            stack.append(char)
        }
    }

    // 1234 ===> in this case remove from last, if still k not zero
    while !stack.isEmpty && k > 0 {
        stack.popLast()
        k -= 1
    }

    if stack.isEmpty {
        return "0"
    }

    return String(stack)
}

removeKdigits("1432219", 3) // "1219"
removeKdigits("10200", 1) // "200"
removeKdigits("10", 2) // "0"


// Approach 2:
func removeKdigits_v2(_ num: String, _ k: Int) -> String {
    if num.count == k { return "0" }
    
    var numArr: [Character] = Array(num)
    
    for _ in 0..<k {
        var i = 0
        while i < numArr.count-1 && numArr[i] <= numArr[i+1] {
            i += 1
        }
        numArr.remove(at: i)
    }
    
    if numArr.isEmpty { return "0" }
    

    if let val = Int(String(numArr)), val == 0 {
        return "0"
    }

    var j = 0
    while numArr[j] == "0" {
        j += 1
    }

    return String(numArr[j..<numArr.count])
}

removeKdigits_v2("1432219", 3) // "1219"
removeKdigits_v2("10200", 1) // "200"
removeKdigits_v2("10", 2) // "0"
