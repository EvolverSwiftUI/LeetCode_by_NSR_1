import Foundation

func licenseKeyFormatting(_ s: String, _ k: Int) -> String {
    var result: [Character] = []
    let arr: [Character] = Array(s.uppercased())
    var i = arr.count-1
    var count = 0
    
    while i >= 0 {
        let char = arr[i]

        if char == "-" {
            i -= 1
        } else if count != 0 && count % k == 0 {
            result.insert("-", at: 0)
            count = 0
        } else {
            result.insert(char, at: 0)
            i -= 1
            count += 1
        }
    }

    return String(result)
}

licenseKeyFormatting("5F3Z-2e-9-w", 4) // "5F3Z-2E9W"
licenseKeyFormatting("2-5g-3-J", 2) // "2-5G-3J"
