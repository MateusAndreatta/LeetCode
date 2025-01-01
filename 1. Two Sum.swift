// Problem: Two Sum
// Given an array of integers `nums` and an integer `target`, the goal is to find two numbers in the array
// such that their sum equals the target value. The function should return the indices of these two numbers.
//
// Assumptions:
// - There will always be exactly one solution for the given input.
// - The same element cannot be used twice.
// - The order of the indices in the result does not matter.
//
// Examples:
// 1. Input: nums = [2,7,11,15], target = 9
//    Output: [0,1]
//    Explanation: nums[0] + nums[1] = 2 + 7 = 9
//
// 2. Input: nums = [3,2,4], target = 6
//    Output: [1,2]
//    Explanation: nums[1] + nums[2] = 2 + 4 = 6
//
// 3. Input: nums = [3,3], target = 6
//    Output: [0,1]
//    Explanation: nums[0] + nums[1] = 3 + 3 = 6
//
// Constraints:
// - 2 <= nums.length <= 10^4
// - -10^9 <= nums[i] <= 10^9
// - -10^9 <= target <= 10^9
// - Only one valid answer exists.

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var valueToIndex = [Int : Int]()

        for (index, value) in nums.enumerated() {
           let result = target - value
           if let findedIndex = valueToIndex[result] {
               return [findedIndex, index]
           } else {
               valueToIndex[value] = index
           }
        }
        return []
    }
}