import Foundation

func titleToNumber(_ columnTitle: String) -> Int {
    
    if columnTitle.isEmpty { return 0 }
    
    var result = 0

    for char in columnTitle {
        result *= 26
        result += Int(char.asciiValue! - 64)
    }
    
    return result
}

titleToNumber("A") // 1
titleToNumber("AB") // 28
titleToNumber("ZY") // 701
