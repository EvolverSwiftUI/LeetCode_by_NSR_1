import Foundation

/*
    left -> right => [index > index+1] => add
    left -> right => [index < index+1] => sub
*/

// brute force approach
func romanToInt1(_ s: String) -> Int {
    
    let dict: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    
    let sChars: [Character] = Array(s)
    var result = 0
    
    for i in 0..<sChars.count {
        var val1 = dict[sChars[i]]!
        
        if i+1 < sChars.count {
            var val2 = dict[sChars[i+1]]!
            //if val1 >= val2 {
            //    result = result + val1
            //} else {
            //    result = result - val1
            //}
            // make easly like this way the above if
            result += (val1 >= val2) ? val1 : -val1
        } else {
            result +=  val1
        }
    }

    return result
}

romanToInt1("III") // 3
romanToInt1("LVIII") // 58
romanToInt1("MCMXCIV") // 1994



// best approach
func romanToInt2(_ s: String) -> Int {
    
    let dict: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    
    var prev = 0
    var output = 0
    
    for char in s {
        let val = dict[char] ?? 0
        output += prev >= val ? prev : -prev
        prev = val
    }
    output += prev
    
    return output
}

romanToInt2("III") // 3
romanToInt2("LVIII") // 58
romanToInt2("MCMXCIV") // 1994

class
