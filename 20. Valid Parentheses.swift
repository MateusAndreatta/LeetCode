// Problem: Valid Parentheses
// Given a string `s` containing just the characters '(', ')', '{', '}', '[' and ']',
// determine if the input string is valid.
//
// A string is considered valid if:
// 1. Open brackets must be closed by the same type of brackets.
// 2. Open brackets must be closed in the correct order.
// 3. Every close bracket has a corresponding open bracket of the same type.
//
// Examples:
//
// Example 1:
// Input: s = "()"
// Output: true
//
// Example 2:
// Input: s = "()[]{}"
// Output: true
//
// Example 3:
// Input: s = "(]"
// Output: false
//
// Example 4:
// Input: s = "([])"
// Output: true
//

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: Array<Character> = []
        for char in s {

            switch(char) {
                case "(", "[", "{":
                    stack.append(char)
                case ")" where stack.last == "(":
                    stack.popLast()
                case "}" where stack.last == "{":
                    stack.popLast()
                case "]" where stack.last == "[":
                    stack.popLast()
                default:
                    return false
            }

        }
        return stack.isEmpty
    }
}