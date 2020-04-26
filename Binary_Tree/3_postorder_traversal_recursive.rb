# INPUT: [1,null,2,3]
#    1
#     \
#      2
#     /
#    3

# OUTPUT: [3, 2, 1]

class TreeNode
  attr_accessor :val, :left, :right
  def initialize val
      @val = val
      @left, @right = nil, nil
  end
end

def traverse node, result
  if !node.nil?
    traverse node.left, result
    traverse node.right, result
    result << node.val
  end
end

def postorder_traversal root
  return if root.nil?

  result = []
  traverse root, result
  result
end
