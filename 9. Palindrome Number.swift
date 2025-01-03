// Problem: Palindrome Number
// Given an integer `x`, the task is to determine whether it is a palindrome.
// A palindrome is a number that reads the same backward as forward.
//
// Examples:
//
// Example 1:
// Input: x = 121
// Output: true
// Explanation: 121 reads the same from left to right and right to left.
//
// Example 2:
// Input: x = -121
// Output: false
// Explanation: Reading from left to right, it is -121. From right to left, it becomes 121-, which is not the same.
//
// Example 3:
// Input: x = 10
// Output: false
// Explanation: Reading from left to right, it is 10. From right to left, it reads as 01, which is not the same.
//
// Constraints:
// - \( -2^{31} \leq x \leq 2^{31} - 1 \)
//
// Additional Notes:
// - Negative numbers are not palindromes because of the '-' sign.
// - The solution should avoid converting the integer to a string if possible, to ensure efficient memory usage.
// - A common approach involves reversing half of the digits of the number and comparing them to the other half.

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        let str = String(x)
        if  String(str.reversed()) == str {
            return true
        }
        return false
    }
}