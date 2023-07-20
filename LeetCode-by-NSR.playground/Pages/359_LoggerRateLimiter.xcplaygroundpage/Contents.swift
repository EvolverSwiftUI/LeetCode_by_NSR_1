import Foundation

var map: [String: Int] = [:]

func shouldPrintMessage(_ timestamp: Int, _ message: String) -> Bool {
    if let val = map[message] {
        let diff = timestamp - val
        if diff >= 10 {
            map[message] = timestamp
            return true
        }
        return false
    }
    map[message] = timestamp
    return true
}

shouldPrintMessage(1, "foo") // true
shouldPrintMessage(2, "bar") // true
shouldPrintMessage(3, "foo") // false
shouldPrintMessage(8, "bar") // false
shouldPrintMessage(10, "foo") // false
shouldPrintMessage(11, "foo") // true

