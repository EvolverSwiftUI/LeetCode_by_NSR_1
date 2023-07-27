import Foundation

func countAndSay(_ n: Int) -> String {

    if n <= 0 { return "" }
    if n == 1 { return "1" }

    func internalCountAndSay(_ arr: [Int]) -> [Int] {
        var output: [Int] = []
        var current = arr[0]
        var count = 1
        var arr = arr
        arr.removeFirst()
        
        for item in arr {
            if item == current {
                count += 1
            } else {
                output.append(count)
                output.append(current)
                current = item
                count = 1
            }
        }
        
        output.append(count)
        output.append(current)
        
        return output
    }
      
    var result: [Int] = [1]
    for _ in 1..<n {
        result = internalCountAndSay(result)
        print(result)
    }
    
    return result.map { String($0) }.joined()
}

countAndSay(1) // "1"
countAndSay(4) // "1211"
countAndSay(5) // "111221"
