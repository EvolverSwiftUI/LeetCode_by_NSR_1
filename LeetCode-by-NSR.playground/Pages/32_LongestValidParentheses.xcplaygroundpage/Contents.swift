import Foundation

func longestValidParentheses(_ s: String) -> Int {
    if s.isEmpty { return 0 }
    
    var result = 0
    var stack: [Int] = []
    stack.append(-1)
    
    for (index, char) in s.enumerated() {
        if char == "(" {
            stack.append(index)
        } else {
            stack.removeLast()
            if !stack.isEmpty {
                result = max(result, index - stack.last!)
            } else {
                stack.append(index)
            }
        }
    }
    
    return result
}

longestValidParentheses("(()") // 2
longestValidParentheses(")()())") // 4
longestValidParentheses("") // 0
