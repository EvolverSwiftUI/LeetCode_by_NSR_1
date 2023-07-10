import Foundation

// Approach 1

func longestCommonPrefix(_ strs: [String]) -> String {
    
    if strs.isEmpty { return "" }
    if strs.count == 1 { return String(strs.first!)}
    
    var res = ""
    var chars: [Character] = Array(strs.first!)
    let isMatched = strs.count-1
    var count = 0
    var temp = ""

    for (index1,char1) in chars.enumerated() {
        count = 0
        temp.append(char1)
        for i in 1..<strs.count {
            for (index2,char2) in Array(strs[i]).enumerated() {
                if index1 == index2 && char1 == char2 {
                    count += 1
                    if isMatched == count {
                        res.append(char1)
                        count = 0
                    }
                }
            }
        }

        if res != temp {
            break
        }

    }
    return res
}

longestCommonPrefix(["flower","flow","flight"]) // fl
longestCommonPrefix(["dog","racecar","car"]) // ""


// Approach 2

func longestCommonPrefix2(_ strs: [String]) -> String {
    if strs.isEmpty { return "" }
    if strs.count == 1 { return strs.first! }
    
    var common = strs.first ?? ""
    
    for str in strs {
        while !str.hasPrefix(common) {
            common = String(common.dropLast())
        }
    }
    
    return common
}

longestCommonPrefix2(["flower","flow","flight"]) // fl
longestCommonPrefix2(["dog","racecar","car"]) // ""


// Approach 3

func longestCommonPrefix3(_ strs: [String]) -> String {
    if strs.isEmpty { return "" }
    if strs.count == 1 { return strs.first! }
    
    var strArr = strs.sorted()
    var first = Array(strArr.first ?? "")
    var last = Array(strArr.last ?? "")
    var common = ""

    for i in 0..<first.count {
        if first[i] != last[i] {
            break
        }
        common.append(first[i])
   }
    
    return common
}

longestCommonPrefix3(["flower","flow","flight"]) // fl
longestCommonPrefix3(["dog","racecar","car"]) // ""
