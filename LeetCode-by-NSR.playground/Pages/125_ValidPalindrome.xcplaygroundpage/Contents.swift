import Foundation
import XCTest


// APPROACH 1:

//func isPalindrome(_ s: String) -> Bool {
//    guard !s.isEmpty else { return true }
//
//    var input = s.filter { $0.isLetter || $0.isNumber }
//    input = input.lowercased()
//
//    var reversed = ""
//    for ch in input {
//        reversed = String(ch) + reversed
//    }
//
//    return input == reversed
//}


// APPROACH 2:
//func isPalindrome(_ s: String) -> Bool {
//    guard s.count > 1 else { return true }
//
//    var input: [Character] = Array(s.filter { $0.isLetter || $0.isNumber })
//
//    var left = 0
//    var right = input.count-1
//
//    while left < right {
//        if input[left].lowercased() != input[right].lowercased() {
//            return false
//        }
//
//        left += 1
//        right -= 1
//    }
//
//    return true
//}


// APPROACH 3:
//func isPalindrome(_ s: String) -> Bool {
//    guard s.count > 1 else { return true }
//
//    var input: [Character] = Array(s)
//
//    var left = 0
//    var right = input.count-1
//
//    while left < right {
//
//        if !input[left].isLetter && !input[left].isNumber {
//            left += 1
//            continue
//        }
//
//        if !input[right].isLetter && !input[right].isNumber {
//            right -= 1
//            continue
//        }
//
//        if input[left].lowercased() != input[right].lowercased() {
//            return false
//        }
//
//        left += 1
//        right -= 1
//    }
//
//    return true
//}


// APPROACH 4:
// using native swift string indices approach
func isPalindrome(_ s: String) -> Bool {
    guard s.count > 1 else { return true }
    
    var left = s.startIndex
    var right = s.index(before: s.endIndex)
    
    while left < right {
        guard s[left].isLetter || s[left].isNumber else {
            left = s.index(after: left)
            continue
        }
        guard s[right].isLetter || s[right].isNumber else {
            right = s.index(before: right)
            continue
        }

        guard s[left].lowercased() == s[right].lowercased() else { return false }
        
        left = s.index(after: left)
        right = s.index(before: right)
    }
    
    return true
}


class Test: XCTestCase {
    func testCase1() {
        let actual = isPalindrome("A man, a plan, a canal: Panama")
        let expected = true
        XCTAssertEqual(actual, expected)
    }
    
    func testCase2() {
        let actual = isPalindrome("race a car")
        let expected = false
        XCTAssertEqual(actual, expected)
    }
    
    func testCase3() {
        let actual = isPalindrome(" ")
        let expected = true
        XCTAssertEqual(actual, expected)
    }
}

Test.defaultTestSuite.run()
