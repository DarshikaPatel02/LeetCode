--Reverse String - https://leetcode.com/explore/featured/card/june-leetcoding-challenge/539/week-1-june-1st-june-7th/3350/

Example 1:

Input: ["h","e","l","l","o"]
Output: ["o","l","l","e","h"]
Example 2:

Input: ["H","a","n","n","a","h"]
Output: ["h","a","n","n","a","H"]

class Solution {
    func reverseString(_ s: inout [Character]) {
        
        var start = 0
        var end = s.count - 1
        
        while(start < end) {
            var temp = s[start]
            s[start] = s[end]
            s[end] = temp
            start += 1
            end -= 1
        }
    }
}