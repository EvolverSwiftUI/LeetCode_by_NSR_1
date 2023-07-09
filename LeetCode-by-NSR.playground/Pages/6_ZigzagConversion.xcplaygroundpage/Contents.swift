import Foundation

func convert(_ s: String, _ numRows: Int) -> String {
    
    if s.count > 0 && numRows == 1 { return s }
    
    var result = [[Character]](repeating: [], count: numRows)
    let sChars: [Character] = Array(s)
    
    var index = 0
    var isUp = true
    
    for char in sChars {

        result[index].append(char)
        
        //if isUp  {
        //    index += 1
        //} else {
        //    index -= 1
        //}
        
        // in simple form like below
        index += isUp ? 1 : -1
        
        if index == -1 || index == numRows { // reaches either top or bottom
            //if isUp {
            //    index -= 2
            //} else {
            //    index += 2
            //}
            
            // in simple form like below
            index += isUp ? -2 : 2 // adjust index
            
            isUp.toggle() // flip direction
        }
    }
    
    return result.map { String($0) }.joined()
}

convert("PAYPALISHIRING", 3) // "PAHNAPLSIIGYIR"
convert("PAYPALISHIRING", 4) // "PINALSIGYAHRPI"
