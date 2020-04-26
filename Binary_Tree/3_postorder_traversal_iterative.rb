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


def postorder_traversal root
  return if root.nil?

  result, stack = [], []
  while !root.nil? || !stack.empty?
    while root
      stack.push root.right if root.right
      stack.push root
      root = root.left
    end

    root = stack.pop
    if root.right && root.right == stack.last
      tmp = root
      root = stack.pop
      stack.push tmp
    else
      result << root.val
      root = nil
    end
  end
  result
end
