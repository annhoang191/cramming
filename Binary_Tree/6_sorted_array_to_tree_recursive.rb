# Given an integer array nums where the elements are sorted in ascending order,
# convert it to a height-balanced binary search tree.
# (height-balanced binary tree: the depth of the two subtrees of every node never differs by more than one)

# INPUT: [-10,-3,0,5,9]
# OUTPUT: [0, -3, 9, -10, null, 5]
#     0
#    / \
#   -3  9
#   /    \
# -10     5

# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end

def sorted_array_to_bst(nums)
  return nil if nums.empty?

  mid = nums.length / 2
  node = TreeNode.new nums[mid]

  node.left = sorted_array_to_bst(nums[0..mid-1]) if mid-1 >= 0
  node.right = sorted_array_to_bst(nums[mid+1..-1]) if mid+1 <= nums.length-1
  return node
end
