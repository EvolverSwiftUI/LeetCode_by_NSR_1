import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    if strs.isEmpty { return [] }
    
    var dict: [String: [String]] = [:]
    
    for str in strs {
        let sortedStr = String(str.sorted())
        if dict[sortedStr] == nil {
            dict[sortedStr] = [str]
        } else {
            var existingArray = dict[sortedStr]!
            existingArray.append(str)
            dict[sortedStr] = existingArray
        }
    }
    
    return Array(dict.values)
}

groupAnagrams(["eat","tea","tan","ate","nat","bat"]) // [["bat"],["nat","tan"],["ate","eat","tea"]]
groupAnagrams([""]) // [[""]]
groupAnagrams(["a"]) // [["a"]]
