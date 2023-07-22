import Foundation


// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


let head: ListNode? = ListNode(4)
let node5 = ListNode(5)
let node1 = ListNode(1)
let node9 = ListNode(9)
head?.next = node5
node5.next = node1
node1.next = node9

func deleteNode(_ node: ListNode?) -> ListNode? {
    if node == nil { return nil }
    var current = head
    var prev: ListNode?
    
    while current != nil {
        if current?.val == node?.val {
            prev?.next = current?.next
            return head
        } else {
            prev = current
            current = current!.next
        }
    }
    return head
}

//deleteNode(node5)
deleteNode(node1)
