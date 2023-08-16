import Foundation

func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
    
    if people.isEmpty { return 0 }
    
    var numberOfBoats = 0
    var people = people.sorted()
    var start = 0
    var end = people.count-1
    
    while start <= end {
        let peopleA = people[start]
        let peopleB = people[end]

        let weightSum = peopleA+peopleB
        
        if weightSum <= limit {
            start += 1
            end -= 1
        } else {
            end -= 1
        }

        numberOfBoats += 1
    }
    
    return numberOfBoats
}

numRescueBoats([1,2], 3) // 1
numRescueBoats([3,2,2,1], 3) // 3
numRescueBoats([3,5,3,4], 5) // 4
