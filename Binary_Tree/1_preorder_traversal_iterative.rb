# INPUT: [1,null,2,3]
#    1
#     \
#      2
#     /
#    3

# OUTPUT: [1,2,3]

class TreeNode
  attr_accessor :val, :left, :right

  def initialize val
    @val = val
    @left, @right = nil, nil
  end
end

def preorder_traversal root
  result, stack = [], []
  return if root.nil?

  stack.push root if root
  while node == stack.pop
    result << node.val
    stack.push node.right if node.right
    stack.push node.left if node.left
  end
  result
end
