/**
 * Counts the number of strings in an array that contain a given prefix.
 * 
 * You are given an array of strings words and a string pref.
 * Return the number of strings in words that contain pref as a prefix.
 * A prefix of a string s is any leading contiguous substring of s.
 * 
 * - Example 1:
 *   Input: words = ["pay", "attention", "practice", "attend"], pref = "at"
 *   Output: 2
 *   Explanation: The strings "attention" and "attend" start with the prefix "at".
 * 
 * - Example 2:
 *   Input: words = ["leetcode", "win", "loops", "success"], pref = "code"
 *   Output: 0
 *   Explanation: No string in the array starts with the prefix "code".
 * 
 * 
 * - Constraints:
 *   - 1 <= words.length <= 100
 *   - 1 <= words[i].length, pref.length <= 100
 *   - words[i] and pref consist of lowercase English letters.
 */

class Solution {
    func prefixCount(_ words: [String], _ pref: String) -> Int {
        var count = 0
        for word in words {
            if word.starts(with: pref) {
                count+=1
            }
        }
        return count
    }
}