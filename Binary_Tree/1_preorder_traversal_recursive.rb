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

def depth_first_search root, result
  if root
    result << root.val
    depth_first_search root.left, result if root.left
    depth_first_search root.right, result if root.right
  end
end

def preorder_traversal root
  result = []
  depth_first_search root, result
  result
end
