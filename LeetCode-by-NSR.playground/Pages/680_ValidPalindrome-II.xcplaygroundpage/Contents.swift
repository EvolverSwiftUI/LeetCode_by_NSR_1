import Foundation

//func validPalindrome(_ s: String) -> Bool {
//
//    let input = Array(s)
//    var left = 0
//    var right = input.count-1
//
//    func isValid(arr: [Character], l: Int, r: Int) -> Bool {
//        var left = l
//        var right = r
//
//        while left <= right {
//            if arr[left] != arr[right] { // if not match next time, we just simply return false
//                return false
//            }
//            left += 1
//            right -= 1
//        }
//
//        return true
//    }
//
//    while left <= right {
//        if input[left] == input[right] {
//            left += 1
//            right -= 1
//        } else {
//            // here we are skipping(one char) either of sides
//            return isValid(arr: input, l: left + 1, r: right) || isValid(arr: input, l: left, r: right-1)
//        }
//    }
//
//    return true
//}



// APPROACH 2:
func validPalindrome(_ s: String) -> Bool {
    let input = Array(s)
    
    func internalValidPalindrome(
        _ arr: [Character],
        _ startPointer: Int,
        _ endPointer: Int,
        _ isAlredyRemoved: Bool
    ) -> Bool {
        
        var left = startPointer
        var right = endPointer
        
        while left <= right {
            if arr[left] == arr[right] {
                left += 1
                right -= 1
            } else {
                if isAlredyRemoved {
                    return false
                } else {
                    let leftApproach = internalValidPalindrome(arr, left+1, right, true)
                    let rightApproach = internalValidPalindrome(arr, left, right-1, true)
                    return leftApproach || rightApproach
                }
            }
        }
        
        return true
    }
    
    return internalValidPalindrome(input, 0, input.count-1, false)
}


validPalindrome("aba") // true
validPalindrome("abca") // true
validPalindrome("abc") // false
