import Foundation

class Node {
    var next: Node?
    var value: Int
    var min: Int
    
    init(value: Int, min: Int, next: Node? = .none) {
        self.value = value
        self.min = min
        self.next = next
    }
}

class MinStack {

    private var head: Node!
    
    init() {}
    
    func push(_ val: Int) {
        if head == nil {
            head = Node(value: val, min: val)
        } else {
            head = Node(value: val, min: min(head.min, val), next: head)
        }
    }
    
    func pop() {
        head = head.next
    }
    
    func top() -> Int {
        head.value
    }
    
    func getMin() -> Int {
        head.min
    }
}

let minStack = MinStack()
minStack.push(-2)
minStack.push(0)
minStack.push(-3)
minStack.getMin() // -3
minStack.pop()
minStack.top() // 0
minStack.getMin() // -2
