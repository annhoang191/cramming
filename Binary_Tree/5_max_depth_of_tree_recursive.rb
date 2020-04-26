# Given a binary tree, find its maximum depth.
# The maximum depth is the number of nodes along the longest path
# from the root node down to the farthest leaf node.

# Given binary tree [3,9,20,null,null,15,7],
#     3
#    / \
#   9  20
#     /  \
#    15   7
# return its depth = 3

class TreeNode
  attr_accessor :val, :left, :right

  def initialize val
    @val = val
    @left, @right = nil, nil
  end
end

def max_depth root
  return 0 if root.nil?
  left = max_depth root.left
  right = max_depth root.right

  left > right ? left + 1 : right + 1
end
