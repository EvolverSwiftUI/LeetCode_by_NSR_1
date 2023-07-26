import Foundation
import XCTest

func fizzBuzz(_ n: Int) -> [String] {
    var result: [String] = []
    
    //Approach 1:
    
    //for i in 1...n {
    //    if i%3 == 0 && i%5 == 0 {
    //        result.append("FizzBuzz")
    //    } else if i%3 == 0 {
    //        result.append("Fizz")
    //    } else if i%5 == 0 {
    //        result.append("Buzz")
    //    } else {
    //        result.append(String(i))
    //    }
    //}
    
    //Approach 2:
    
    for num in 1...n {
        switch (num % 3, num % 5) {
        case (0, 0): result.append("FizzBuzz")
        case (0, _): result.append("Fizz")
        case (_, 0): result.append("Buzz")
        default: result.append(String(num))
        }
    }
    
    return result
}


// test different testcases
class Test: XCTestCase {
    func testOutput1() {
        let expected = ["1","2","Fizz"]
        let actual = fizzBuzz(3)
        XCTAssertEqual(actual, expected, "Error in test 1")
    }

    func testOutput2() {
        let expected = ["1","2","Fizz","4","Buzz"]
        let actual = fizzBuzz(5)
        XCTAssertEqual(actual, expected, "Error in test 2")
    }

    func testOutput3() {
        let expected = ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
        let actual = fizzBuzz(15)
        XCTAssertEqual(actual, expected, "Error in test 3")
    }
}

Test.defaultTestSuite.run()
