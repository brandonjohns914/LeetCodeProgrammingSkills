//Given a string s, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together.

//Example 1:
//Input: s = "abab"
//Output: true
//Explanation: It is the substring "ab" twice.

//Example 2:
//Input: s = "aba"
//Output: false

//Example 3:
//Input: s = "abcabcabcabc"
//Output: true
//Explanation: It is the substring "abc" four times or the substring "abcabc" twice.


import SwiftUI

class Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
     
        var distanceBetweenCharacters = 1
        let sLength = s.count
        
        while(distanceBetweenCharacters <= sLength / 2) {
            if sLength % distanceBetweenCharacters != 0 {
                distanceBetweenCharacters += 1
                continue
            }
            
            guard let initialEndIndex = s.index(s.startIndex, offsetBy:  distanceBetweenCharacters, limitedBy: s.endIndex) else {
                break
            }
            
            var endIndex = initialEndIndex
            
            let checkRange = s.startIndex..<endIndex
            
            while let nextEndIndex = s.index(endIndex, offsetBy: distanceBetweenCharacters, limitedBy: s.endIndex) {
                if s[checkRange] != s[endIndex..<nextEndIndex] {
                    break
                }
                if nextEndIndex == s.endIndex {
                    return true
                } else {
                    endIndex = nextEndIndex
                }
            }
            distanceBetweenCharacters += 1
        }
     
        return false
    }
}

var sol = Solution()
sol.repeatedSubstringPattern("ABABABAB")



