import Foundation
import XCTest

func maxProfit(_ prices: [Int]) -> Int {
    if prices.isEmpty { return 0 }

    var minValue = Int.max
    var maxProfit = 0
    
    for price in prices {
        if price < minValue {
            minValue = price // here buy happed
        } else if price - minValue > maxProfit  { // now need to sell at max profit
            maxProfit = price - minValue
        }
    }
    
    return maxProfit
}

maxProfit([7,1,5,3,6,4]) // 5
maxProfit([7,6,4,3,1]) // 0

class Test: XCTestCase {
    func testCase1() {
        let actual = maxProfit([7,1,5,3,6,4])
        let expected = 5
        XCTAssertEqual(expected, actual)
    }
    
    func testCase2() {
        let actual = maxProfit(([7,6,4,3,1]))
        let expected = 0
        XCTAssertEqual(expected, actual)
    }
}

Test.defaultTestSuite.run()

/*
 Test Results - as PASSED All cases:
 
 Test Suite 'Test' started at 2023-08-03 11:03:52.583
 Test Case '-[__lldb_expr_3.Test testCase1]' started.
 Test Case '-[__lldb_expr_3.Test testCase1]' passed (0.004 seconds).
 Test Case '-[__lldb_expr_3.Test testCase2]' started.
 Test Case '-[__lldb_expr_3.Test testCase2]' passed (0.000 seconds).
 Test Suite 'Test' passed at 2023-08-03 11:03:52.591.
      Executed 2 tests, with 0 failures (0 unexpected) in 0.004 (0.007) seconds

 */
