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
  return if root.nil?

  queue = []
  height = 0
  queue << root
  while True
    nodeCount = queue.length
    return height if nodeCount == 0
    height += 1

    while nodeCount > 0
      node = queue[0]
      queue.pop 0
      queue << node.left if node.left
      queue << node.right if node.right

      nodeCount -= 1
    end
  end
  height
end
