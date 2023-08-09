import Foundation


/*
     Two things need to consider
         1. Length of word
         2. Begining portion of the word
 */

private let symbol = "?"

func encode(_ strs: [String]) -> String {
    if strs.isEmpty { return "" }
    
    var result = ""
    
    for str in strs {
        let count = str.count
        result += "\(count)\(symbol)\(str)"
    }
    
    return result
}

func decode(_ s: String) -> [String] {
    if s.isEmpty { return [] }
    
    var i = 0
    var j = 0
    
    var charsArray: [Character] = Array(s)
    print(charsArray)
    
    var results: [String] = []
    
    while i <  charsArray.count{
        j = i
        print("index ",j)
        
        while String(charsArray[j]) != symbol {
            j += 1
        }
        
        let lengthOfWord = Int(String(charsArray[i..<j]))!
        print("lengthOfWord", lengthOfWord)
        print(j+1..<j+1+lengthOfWord)
        let str = String(charsArray[j+1..<j+1+lengthOfWord])
        print("String", str)
        results.append(str)
        
        i += j+1+lengthOfWord
    }
    
    return results
}

// test case - 01
encode(["Hello", "World"]) // "5?Hello5?World"
decode("5?Hello5?World") // ["Hello", "World"]

// test case - 02
encode([]) // ""
decode("") // []
