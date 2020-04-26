# Given a binary tree,
# return the level order traversal of its nodes' values.
# (ie, from left to right, level by level).

# Given binary tree [3,9,20,null,null,15,7],
# 3
# / \
# 9  20
#  /  \
# 15   7
# return its level order traversal as:
# [
# [3],
# [9,20],
# [15,7]
# ]


class TreeNode
  attr_accesor :val, :left, :right

  def initialize val
    @val = val
    @left, @right = nil, nil
  end
end

def level_order root
  return if root.nil?
  result, queue = [], []

  queue << root
  until queue.empty?
    level = []
    level_size = queue.length
    level_size.times do
      node = queue.shift
      level << node.val
      queue << node.left unless node.left.nil?
      queue << node.right unless node.right.nil?
    end
    result << level
  end
  result
end
