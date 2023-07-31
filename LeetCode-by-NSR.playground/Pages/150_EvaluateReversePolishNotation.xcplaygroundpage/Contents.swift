import Foundation

func evalRPN(_ tokens: [String]) -> Int {
    var stack: [Int] = []
    
    for item in tokens {
        if let num = Int(item) {
            stack.append(num)
        } else {
            let firstEle = stack.removeLast()
            let secondEle = stack.removeLast()
            
            switch item {
            case "+":
                stack.append(secondEle + firstEle)
            case "-":
                stack.append(secondEle - firstEle)
            case "*":
                stack.append(secondEle * firstEle)
            case "/":
                stack.append(secondEle / firstEle)
            default:
                fatalError("This could not be executed.")
            }
        }
    }
    
    return stack.removeLast()
}

evalRPN(["2","1","+","3","*"]) // 9
evalRPN(["4","13","5","/","+"]) // 6
evalRPN(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]) // 22
