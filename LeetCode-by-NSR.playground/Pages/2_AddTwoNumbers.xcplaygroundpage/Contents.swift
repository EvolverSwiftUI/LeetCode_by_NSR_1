import UIKit


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func printListNodeSimple(_ head: ListNode?) {
    guard var current = head else { return }
    print(current.val)

    while current.next != nil {
        current = current.next!
        print(current.val)
    }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

    var head: ListNode?
    var tail: ListNode?
    
    var node1 = l1
    var node2 = l2
    var carry = 0
    
    while node1 != nil || node2 != nil || carry != 0 {
        var sum = (node1?.val ?? 0) + (node2?.val ?? 0) + carry
        let newNode = ListNode(sum % 10)
        carry = sum / 10
        
        if head == nil {
            head = newNode
            tail = head
        } else {
            tail?.next = newNode
            tail = newNode
        }
        
        node1 = node1?.next
        node2 = node2?.next
    }
    
    return head
}


let num1 = ListNode(2, ListNode(4, ListNode(3)))
let num2 = ListNode(5, ListNode(6, ListNode(4)))

addTwoNumbers(num1, num2)
