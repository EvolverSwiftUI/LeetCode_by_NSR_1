import Foundation

class Node {
    let key: Int
    var next: Node?
    
    init(_ key: Int, _ node: Node? = nil) {
        self.key = key
        self.next = node
    }
}

func detectAndCountCycle(_ head: Node) -> Int {
    
    var slow = head
    var fast = head
    
    while slow.next != nil && fast.next != nil && fast.next?.next != nil {
        slow = slow.next!
        fast = fast.next!.next!
        
        if slow === fast {
            var result = 0
            repeat {
                result += 1
                fast = fast.next!
            } while slow.key != fast.key
            
            return result
        }
    }
    
    return 0
}

let head = Node(1)
let node2 = Node(2)
let node3 = Node(3)
let node4 = Node(4)
let node5 = Node(5)
head.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node3


detectAndCountCycle(head) // 3
