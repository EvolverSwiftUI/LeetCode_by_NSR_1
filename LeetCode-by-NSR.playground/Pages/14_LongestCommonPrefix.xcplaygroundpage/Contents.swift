import Foundation

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
