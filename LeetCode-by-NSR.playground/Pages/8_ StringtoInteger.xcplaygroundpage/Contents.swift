import Foundation

func myAtoi(_ s: String) -> Int {
    var output = 0
    var isNegative = false
    var isStarted = false
    
    for char in s {
        
        if char == " " {
            if isStarted {
                break
            }
        } else if (char == "+" || char == "-") {
            if isStarted {
                break
            }
            isStarted = true
            if char == "-" {
                isNegative = true
            }
        } else if char.isNumber {
            isStarted = true
            if let val = char.wholeNumberValue {
                output = output*10 + val
            }
            if output > Int32.max {
                return isNegative ? Int(Int32.min) : Int(Int32.max)
            }
        } else {
            break
        }
    }
    
    
    if isNegative {
        output = -1 * output
    }
    
    return output
}

myAtoi("42") //42
myAtoi("   -42") //-42
myAtoi("4193 with words") //4193
myAtoi("Hello 973") //0
