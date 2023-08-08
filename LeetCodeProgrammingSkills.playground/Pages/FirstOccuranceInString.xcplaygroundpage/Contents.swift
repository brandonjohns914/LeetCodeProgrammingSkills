//Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

//Example 1:
//Input: haystack = "sadbutsad", needle = "sad"
//Output: 0
//Explanation: "sad" occurs at index 0 and 6.
//The first occurrence is at index 0, so we return 0.

//Example 2:
//Input: haystack = "leetcode", needle = "leeto"
//Output: -1
//Explanation: "leeto" did not occur in "leetcode", so we return -1.


import Foundation

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        var haystackLength = haystack.count
        var needleLength = needle.count
        var haystackArray = Array(haystack)
        var needleArray = Array(needle)
        
        if needleLength == 0 || haystackLength == 0
        {
            return 0
        }
        
        if needleLength > haystackLength {
            return -1
        }
        
        if haystackArray.isEmpty || needleArray.isEmpty {
            return 0
        }
        
        for hay in 0..<haystackLength {
            for need in 0..<needleLength
            {
                if haystackArray[hay + need] != needleArray[need] {
                    break
                }
                
                if need == needleLength - 1 {
                    return hay
                }
            }
        }
        
        
        return -1
        
    }
}

var sol = Solution()

sol.strStr("Brandon", "ran")
