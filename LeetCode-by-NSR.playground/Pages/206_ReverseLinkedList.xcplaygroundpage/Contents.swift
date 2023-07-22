import Foundation


//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    var current = head
    var prev: ListNode?
    var next: ListNode?
    
    while current != nil {
        next = current!.next
        current!.next = prev
        prev = current
        current = next
    }
    
    return prev
}


let list = ListNode(1,(ListNode(2, ListNode(3, ListNode(4, ListNode(5))))))

reverseList(list)
