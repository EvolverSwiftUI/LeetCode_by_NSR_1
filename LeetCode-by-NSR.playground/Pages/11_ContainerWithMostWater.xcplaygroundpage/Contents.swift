import Foundation

func maxArea(_ height: [Int]) -> Int {
    
    var left = 0
    var right = height.count-1
    var maxSoFar = 0
    
    while left < right {
        var currentLength = right-left
        var currentHeight = min(height[left], height[right])
        var currentArea = currentLength * currentHeight
        maxSoFar = max(maxSoFar, currentArea)
        
        if height[left] < height[right] {
            left += 1
        } else {
            right -= 1
        }
    }
    
    return maxSoFar
}

maxArea([1,8,6,2,5,4,8,3,7]) // 49
maxArea([1,1]) // 1
