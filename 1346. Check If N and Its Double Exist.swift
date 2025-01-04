// Problem: Check If N and Its Double Exist
// Given an array `arr` of integers, determine if there exist two indices `i` and `j` such that:
// - \(i \neq j\)
// - \(0 \leq i, j < arr.length\)
// - \(arr[i] = 2 \times arr[j]\)
//
// Examples:
//
// Example 1:
// Input: arr = [10, 2, 5, 3]
// Output: true
// Explanation: For \(i = 0\) and \(j = 2\), \(arr[i] = 10 = 2 \times 5 = 2 \times arr[j]\).
//
// Example 2:
// Input: arr = [3, 1, 7, 11]
// Output: false
// Explanation: There is no pair of indices \(i\) and \(j\) that satisfy the conditions.
//
// Constraints:
// - \(2 \leq arr.length \leq 500\)
// - \(-10^3 \leq arr[i] \leq 10^3\)

class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        
        for i in 0...arr.count-1 {
            for j in 0...arr.count-1 {
                if i == j {
                    continue
                }
                if arr[i] == 2 * arr[j] {
                    return true
                }
            }
        }

        return false
    }
}