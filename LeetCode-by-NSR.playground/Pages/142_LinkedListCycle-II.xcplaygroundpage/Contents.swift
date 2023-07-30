import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


func detectCycle(_ head: ListNode?) -> ListNode? {
    guard head != nil else { return nil }
    var slow = head
    var fast = head
    var cycleFound = false
    
    while slow?.next != nil && fast?.next != nil && fast?.next?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        
        if slow === fast {
            cycleFound = true
            break
        }
    }
    
    if !cycleFound { return nil }
    slow = head
    while slow !== fast {
        slow = slow?.next
        fast = fast?.next
    }
    
    return slow
}

let head = ListNode(1)
let node2 = ListNode(2)
let node3 = ListNode(3)
let node4 = ListNode(4)
let node5 = ListNode(5)
head.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node3


detectCycle(head)
