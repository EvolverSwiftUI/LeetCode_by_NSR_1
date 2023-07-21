import Foundation

class QueueUsingStack {
    var s1: [Int] = []
    var s2: [Int] = []
    
    func enqueue(_ data: Int) {
        s1.append(data)
    }
    
    func dequeue() -> Int {
        var x = -1
        
        if s2.isEmpty {
            if s1.isEmpty {
                print("Queue is empty.")
                return x
            } else {
                while !s1.isEmpty {
                    s2.append(s1.removeFirst())
                }
            }
        }
        x = s2.removeFirst()
        return x
    }
}

func queueUsingStackDriver() {
    let elements = [2,3,1,4,5,7,6]
    let queue = QueueUsingStack()
    for item in elements {
        queue.enqueue(item)
    }
    
    var val = queue.dequeue()
    while val != -1 {
        print(val)
        val = queue.dequeue()
    }
}

queueUsingStackDriver()
