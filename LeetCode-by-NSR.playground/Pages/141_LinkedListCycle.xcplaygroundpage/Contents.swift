import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func hasCycle(_ head: ListNode?) -> Bool {
    if head == nil { return false }
    
    var fast = head
    var slow = head
    
    while slow!.next != nil && fast!.next != nil && fast!.next!.next != nil {
        slow = slow!.next
        fast = fast!.next!.next
        if slow!.val == fast!.val {
            return true
        }
    }
    
    return false
}

func printList(_ root: ListNode?) {
    guard var head = root else { return }
    print(head.val)
    
    while head.next != nil {
        head = head.next!
        print(head.val)
    }
}

let head = ListNode(3)
let node2 = ListNode(2)
let node0 = ListNode(0)
let node4 = ListNode(-4)
head.next = node2
node2.next = node0
node0.next = node4
node4.next = node2
hasCycle(head)

// ---------------------------------
let head2 = ListNode(1)
head2.next = node2
node2.next = head
hasCycle(head2)


// ---------------------------------
let head3 = ListNode(1)
hasCycle(head3)

// =================================================================

// 2nd Approach:
// best
func hasCycle2(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head?.next
    while slow != nil, fast != nil {
        guard slow !== fast else { return true }
        
        slow = slow?.next
        fast = fast?.next?.next
    }
    return false
}

hasCycle2(head)
hasCycle2(head2)
hasCycle2(head3)

