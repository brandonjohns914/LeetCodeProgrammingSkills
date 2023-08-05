//You are given two strings s and t.
//String t is generated by random shuffling string s and then add one more letter at a random position.
//Return the letter that was added to t.

//Example 1:
//Input: s = "abcd", t = "abcde"
//Output: "e"
//Explanation: 'e' is the letter that was added.

//Example 2:
//Input: s = "", t = "y"
//Output: "y"


import Foundation
class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        
        let s_string1 = s.sorted()
        let t_string2 = t.sorted()
        
        for character in 0..<s_string1.count {
            if s_string1[character] != t_string2[character] {
                return t_string2[character]
            }
        }
        
        return t_string2.last ?? " "
    }
}

var sol = Solution()

sol.findTheDifference("z", "tyz")


//: [Next](@next)


