import Foundation
import XCTest

func firstUniqChar(_ s: String) -> Int {
    
    var map: [Character: Bool] = [:]
    
    for ch in s {
        if map[ch] != nil {
            map[ch] = false
        } else {
            map[ch] = true
        }
    }
    
    for (index, ch) in s.enumerated() {
        if map[ch] == true {
            return index
        }
    }
    
    return -1
}

class Test: XCTestCase {
    func testCase1() {
        let actual = firstUniqChar("leetcode")
        let expected = 0
        XCTAssertEqual(actual, expected)
    }
    
    func testCase2() {
        let actual = firstUniqChar("loveleetcode")
        let expected = 2
        XCTAssertEqual(actual, expected)
    }

    func testCase3() {
        let actual = firstUniqChar("aabb")
        let expected = -1
        XCTAssertEqual(actual, expected)
    }

}

Test.defaultTestSuite.run()
