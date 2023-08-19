import Foundation

func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
    if temperatures.isEmpty { return [] }
    
    var results: [Int] = Array(repeating: 0, count: temperatures.count)
    var indices: [Int] = []
    
    for (index, temparature) in temperatures.enumerated() {
        while !indices.isEmpty && temperatures[indices.last!] < temparature {
            let prevIndex = indices.removeLast()
            let diff = index - prevIndex
            results[prevIndex] = diff
        }
        indices.append(index)
    }
    
    return results
}



dailyTemperatures([73,74,75,71,69,72,76,73]) // [1,1,4,2,1,1,0,0]
dailyTemperatures([30,40,50,60]) // [1,1,1,0]
dailyTemperatures([30,60,90]) // [1,1,0]
