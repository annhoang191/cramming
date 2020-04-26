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
  stack = []
  current = root

  while true
    if !current.nil?
      stack << current
      current = current.left
    elsif !stack.empty?
      current = stack.pop
      current = current.right
    else
      break
    end
  end
end
