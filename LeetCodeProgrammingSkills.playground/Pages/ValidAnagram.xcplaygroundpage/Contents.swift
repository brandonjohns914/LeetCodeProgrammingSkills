//Given two strings s and t, return true if t is an anagram of s, and false otherwise.
//An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

//Example 1:
//Input: s = "anagram", t = "nagaram"
//Output: true

//Example 2:
//Input: s = "rat", t = "car"
//Output: false


import Foundation

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sLength = s.count
        var tLength = t.count
        
        var sArray = Array(s).sorted()
        var tArray = Array(t).sorted()
        
        if sArray.isEmpty || tArray.isEmpty {
            return false
        }
        
        if sLength != tLength {
            return false
        }
        
        for sCharacter in 0..<sLength {
            for tCharacter in 0..<tLength {
                if sArray[sCharacter + tCharacter] != tArray[tCharacter] {
                    return false
                }
                
                if tCharacter == tLength - 1 {
                    return true
                }
            }
        }
        return false
    }
    func isAnagram2(_ s: String, _ t: String) -> Bool {
        
        var sSorted = s.sorted()
        var tSorted = t.sorted()
        
        return sSorted == tSorted
    }
}

var sol = Solution()
sol.isAnagram2("brandon", "nodnarb")


//: [Next](@next)
