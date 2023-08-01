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
