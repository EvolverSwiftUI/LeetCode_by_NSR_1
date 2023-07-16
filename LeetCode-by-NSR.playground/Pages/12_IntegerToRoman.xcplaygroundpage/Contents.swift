import Foundation

private let values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
private let symbols = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

func intToRoman(_ num: Int) -> String {
    
    let values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    let symbols = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV", "I"]
    
    var number = num
    var result = ""
    
    while number > 0 {
        for (index,value) in values.enumerated() {
            if number - value >= 0 {
                number = number - value
                result.append(symbols[index])
                break
            }
        }
    }
    
    return result
}

intToRoman(3) // "III"
intToRoman(58) // "LVIII"
intToRoman(1994) // "MCMXCIV"

