import Foundation

// Approach 1:

func isValid(_ s: String) -> Bool {
    guard s.count % 2 == 0 else { return false }
    var array: [Character] = []
    var sChars: [Character] = Array(s)
    for char in sChars {
        switch char {
        case "(", "[", "{":
            array.append(char)
        case ")":
            if let c = array.last, c == "(" {
                array.popLast()
            } else {
                return false
            }
        case "]":
            if let c = array.last, c == "[" {
                array.popLast()
            } else {
                return false
            }
        case "}":
            if let c = array.last, c == "{" {
                array.popLast()
            } else {
                return false
            }
        default:
            return false
        }
    }
    
    return  array.isEmpty
}


isValid("()") // true
isValid("()[]{}") // true
isValid(("(]")) // false



// Approach 2:

func isValid2(_ s: String) -> Bool {
    guard s.count % 2 == 0 else { return false }
    
    var stack: [Character] = []
    var sChars: [Character] = Array(s)
    
    for char in sChars {
        switch char {
        case "(": stack.append(")")
        case "[": stack.append("]")
        case "{": stack.append("}")
        default:
            if stack.isEmpty || stack.popLast() != char {
                return false
            }
        }
    }
    
    return  stack.isEmpty
}

isValid2("()") // true
isValid2("()[]{}") // true
isValid2(("(]")) // false
