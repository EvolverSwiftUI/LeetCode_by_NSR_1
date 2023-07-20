import Foundation

func numUniqueEmails(_ emails: [String]) -> Int {
    if emails.isEmpty { return -1 }
    var uniqueEmails = Set<String>()
    
    for item in emails {
        let emailParts = item.split(separator: "@").map { String($0) }
        var localName = emailParts.first!
        let domainName = emailParts.last!
        localName = localName.replacingOccurrences(of: ".", with: "")
        if let range = localName.range(of: "+") {
            localName = String(localName[..<range.lowerBound])
        }
        uniqueEmails.insert("\(localName)@\(domainName)")
    }
    
    print(uniqueEmails)
    return uniqueEmails.count
}

let emails1 = [
    "test.email+alex@leetcode.com",
    "test.e.mail+bob.cathy@leetcode.com",
    "testemail+david@lee.tcode.com"
]

let emails2 = [
    "a@leetcode.com",
    "b@leetcode.com",
    "c@leetcode.com"
]

numUniqueEmails(emails1) // 2
numUniqueEmails(emails2) // 3
