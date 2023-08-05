//: [Previous](@previous)

//You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

//Return the merged string.


//Example 1:
//Input: word1 = "abc", word2 = "pqr"
//Output: "apbqcr"
//Explanation: The merged string will be merged as so:
//word1:  a   b   c
//word2:    p   q   r
//merged: a p b q c r

//Example 2:
//Input: word1 = "ab", word2 = "pqrs"
//Output: "apbqrs"
//Explanation: Notice that as word2 is longer, "rs" is appended to the end.
//word1:  a   b
//word2:    p   q   r   s
//merged: a p b q   r   s

//Example 3:

//Input: word1 = "abcd", word2 = "pq"
//Output: "apbqcd"
//Explanation: Notice that as word1 is longer, "cd" is appended to the end.
//word1:  a   b   c   d
//word2:    p   q
//merged: a p b q c   d

import Foundation

class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        
        let word1Length = word1.count
        let word2Length = word2.count
        var wordCombo = ""
        var index1 = 0
        var index2 = 0
        
        
        while (( index1 < word1Length) && (index2 < word2Length)) {
            var word1Index = word1.index(word1.startIndex , offsetBy: index1)
            
            index1 += 1
            wordCombo.append(word1[word1Index])
            
            var word2Index = word2.index(word2.startIndex , offsetBy: index2)
            index2 += 1
            wordCombo.append(word2[word2Index])
        }
        
        if index1 < word1Length {
            var word1Suffix = word1.suffix(from: word1.index(word1.startIndex , offsetBy: index1))
            wordCombo.append(contentsOf: word1Suffix)
        }
        
        if index2 < word2Length {
            var word2Suffix = word2.suffix(from: word2.index(word2.startIndex , offsetBy: index2))
            wordCombo.append(contentsOf: word2Suffix)
        }
        
        return wordCombo
        
    }
    
}
    
var sol = Solution()

sol.mergeAlternately("ABC", "XYZ")

