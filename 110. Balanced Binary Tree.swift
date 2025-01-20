/**
* Given a binary tree, determine if it is height-balanced.
* A height-balanced binary tree is a binary tree in which
* the depth of the two subtrees of every node never differs by more than one.
*/

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        guard let root else { return true }

        let result = height(of: root.left) - height(of: root.right) 
        if result > 1 || result < -1 {
            return false
        }
        return isBalanced(root.left) && isBalanced(root.right)
    }

    private func height(of node: TreeNode?) -> Int {
        guard let node else { return -1 }
        let left = height(of: node.left)
        let right = height(of: node.right)
        if left > right {
            return left + 1
        }
        return right + 1
    }
}