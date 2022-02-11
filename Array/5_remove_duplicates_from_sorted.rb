# Given an integer array nums sorted in non-decreasing order,
# remove the duplicates in-place such that each unique element appears only once.
# The relative order of the elements should be kept the same.
# Do not allocate extra space for another array.
# You must do this by modifying the input array in-place with O(1) extra memory.

def remove_duplicates(nums)
  prev = nil
  nums.each_with_index do |num, i|
    nums[i] = nil if prev == num
    prev = num
  end
  nums.compact!
  nums.length
end
