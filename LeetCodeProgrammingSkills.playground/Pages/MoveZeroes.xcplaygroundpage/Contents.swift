//Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
//Note that you must do this in-place without making a copy of the array.

//Example 1:
//Input: nums = [0,1,0,3,12]
//Output: [1,3,12,0,0]

//Example 2:
//Input: nums = [0]
//Output: [0]

import Foundation

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
    
        var nonZeroNumber = 0
        
        for num in 0..<nums.count {
            if nums[num] != 0
            {
                nums.swapAt(num, nonZeroNumber)
                nonZeroNumber += 1
            }
        }
        
    }
}

var sol = Solution()
var arrayNumbers = [0,1,2,3,4,5,0,6]

sol.moveZeroes(&arrayNumbers)

print(arrayNumbers)


