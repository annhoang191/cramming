# INPUT: [1,null,2,3]
#    1
#     \
#      2
#     /
#    3

# OUTPUT: [1, 3, 2]

class TreeNode
  attr_accessor :val, :left, :right
  def initialize val
      @val = val
      @left, @right = nil, nil
  end
end


def inorder_traversal root
  return if root.nil?
  result = []

  result << inorder_traversal root.left if root.left
  result << root.val
  result << inorder_traversal root.right if root.right

  result
end
