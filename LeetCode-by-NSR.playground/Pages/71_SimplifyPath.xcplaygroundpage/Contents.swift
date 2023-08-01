import Foundation

func simplifyPath(_ path: String) -> String {
    var stack: [String] = []
    var tokensString = path.split(separator: "/")
    print(tokensString)
    
    for str in tokensString {
        switch str {
        case "":
            break
        case ".":
            break
        case "..":
            let _ = stack.popLast()
        default:
            stack.append(String(str))
        }
    }
    
    return "/" + stack.joined(separator: "/")
}

simplifyPath("/home/") // "/home"
simplifyPath("/../") // "/"
simplifyPath("/home//foo/") // "/home/foo"
