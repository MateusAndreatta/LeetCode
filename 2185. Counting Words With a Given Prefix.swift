/**
 * Counts the number of strings in an array that contain a given prefix.
 * 
 * The function iterates through an array of strings `words` and checks if each string starts with a given prefix `pref`.
 * A prefix is defined as any leading contiguous substring of a string.
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