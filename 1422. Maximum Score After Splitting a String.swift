// Problem: Maximum Score After Splitting a String
// Given a binary string `s`, the task is to split it into two non-empty substrings (left and right).
// The score is calculated as:
// - The number of '0's in the left substring
// - Plus the number of '1's in the right substring.
//
// The goal is to find the maximum score achievable after splitting.
//
// Examples:
//
// Example 1:
// Input: s = "011101"
// Output: 5
// Explanation:
// - left = "0", right = "11101", score = 1 + 4 = 5
// - left = "01", right = "1101", score = 1 + 3 = 4
// - left = "011", right = "101", score = 1 + 2 = 3
// - left = "0111", right = "01", score = 1 + 1 = 2
// - left = "01110", right = "1", score = 2 + 1 = 3
//
// Example 2:
// Input: s = "00111"
// Output: 5
// Explanation:
// When left = "00" and right = "111", score = 2 + 3 = 5.
//
// Example 3:
// Input: s = "1111"
// Output: 3
// Explanation:
// When left = "111" and right = "1", score = 0 + 3 = 3.
//
// Constraints:
// - 2 <= s.length <= 500
// - The string `s` consists only of '0' and '1'.

class Solution {
    func maxScore(_ s: String) -> Int {
        let scores = Array(s)
        var maxScore = 0
        for position in 0..<scores.count - 1 {
            let left = scores[...position]
            let right = scores[(position + 1)...]
            let positionScore = score(for: "0", in: left) + score(for: "1", in: right)
            maxScore = max(maxScore, positionScore)
        }

        return maxScore
    }

    func score(for target: Character, in scores: ArraySlice<Character>) -> Int {
        var score = 0
        for value in scores {
            if value == target {
                score += 1
            }
        }
        return score
    }
}