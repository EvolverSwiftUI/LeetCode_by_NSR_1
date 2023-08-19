import Foundation

func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    
    if stones.isEmpty { return 0 }
    
    var count = 0
    for char in stones {
        if jewels.contains(char) {
            count += 1
        }
    }
    
    return count
}

numJewelsInStones("aA", "aAAbbbb") //3
numJewelsInStones("z", "ZZ") // 0
