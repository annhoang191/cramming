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

def traverse_level root, level
  return if root.nil?
  return true if level == 1

  left_traverse = traverse_level root.left, level - 1
  right_traverse = traverse_level root.right, level -1

  left_traverse || right_traverse
end

def level_order root
  level = 1
  while traverse_level(root, level)
    level++
  end
end
