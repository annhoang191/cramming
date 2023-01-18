# A valid BST is defined as follows:
# - The left subtree of a node contains only nodes with keys less than the node's key.
# - The right subtree of a node contains only nodes with keys greater than the node's key.
# - Both the left and right subtrees must also be binary search trees.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}


# Using depth first search
def is_valid_bst(root)
  stack = [{
    node: root,
    lower: -Float::INFINITY,
    upper: Float::INFINITY
  }]

  root = true

  while stack.any?
    current = stack.pop
    node = current[:node]
    lower = current[:lower]
    upper = current[:upper]

    if root
      root = false
    else
      return false if node.val >= upper || node.val <= lower
    end

    if node.left
      stack << {
        node: node.left,
        lower: lower,
        upper: node.val
      }
    end

    if node.right
      stack << {
        node: node.right,
        lower: node.val,
        upper: upper
      }
    end
  end

  root
end
