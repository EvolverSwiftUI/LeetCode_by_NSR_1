import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    
    if needle.count > haystack.count { return -1 }
    
    var hChars: [Character] = Array(haystack)
    var nChars: [Character] = Array(needle)
    let hCount = hChars.count
    let nCount = nChars.count
    
    for i in 0...(hCount - nCount) {
        var startIndex = i
        var endIndex = startIndex + nCount
        var subStr = String(hChars[startIndex..<endIndex])
        if subStr == needle {
            return i
        }
    }
    
    return -1
}

strStr("sadbutsad", "sad") //0
strStr("leetcode", "leeto") //-1
