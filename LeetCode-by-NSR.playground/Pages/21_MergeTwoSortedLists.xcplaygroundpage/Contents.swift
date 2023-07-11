import Foundation

//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    
    if list1 == nil && list2 == nil { return nil }
    if list1 == nil { return list2 }
    if list2 == nil { return list1 }
    
    var head: ListNode?
    var tail: ListNode?
    
    var l1 = list1
    var l2 = list2
    
    while l1 != nil && l2 != nil {
        if var v1 = l1?.val, var v2 = l2?.val {
            
            if v1 > v2 {
                let temp = v1
                v1 = v2
                v2 = temp
            }
            
            if head == nil {
                head = ListNode(v1)
                tail = head
                let node = ListNode(v2)
                tail?.next = node
                tail = node
            } else {
                var node = ListNode(v1)
                tail?.next = node
                tail = node
                node = ListNode(v2)
                tail?.next = node
                tail = node
            }
        }
        
        l1 = l1?.next
        l2 = l2?.next
    }
    
    while l1 != nil {
        if let val = l1?.val {
            let node = ListNode(val)
            tail?.next = node
            tail = node
        }
        l1 = l1?.next
    }
    
    while l2 != nil {
        if let val = l2?.val {
            let node = ListNode(val)
            tail?.next = node
            tail = node
        }
        l2 = l2?.next
    }
    
    var node1 = head
    while node1?.next != nil {
        head = sortItems(head)
        node1 = node1?.next
    }
    
    return head
}

func sortItems(_ root: ListNode?) -> ListNode? {
    if root == nil { return nil }
    
    let head = root
    var tail = head
    var prev = tail
    
    while tail?.next != nil {
        prev = tail
        tail = tail?.next
        if let v1 = prev?.val, let v2 = tail?.val {
            if v1 > v2 {
                let temp = prev!.val
                prev?.val = tail!.val
                tail?.val = temp
            }
        }
    }
    
    return head
}

func printList(_ head: ListNode?) {
    guard var current = head else { return }
    print(current.val)
    
    while current.next != nil {
        current = current.next!
        print(current.val)
    }
}


var list1: ListNode? = ListNode(1, (ListNode(2, ListNode(4))))
var list2: ListNode? = ListNode(1, (ListNode(3, ListNode(4))))
mergeTwoLists(list1, list2) // [1,1,2,3,4,4]

list1 = nil
list2 = nil
mergeTwoLists(list1, list2) // []

list1 = nil
list2 = ListNode(0)
mergeTwoLists(list1, list2) // [0]
