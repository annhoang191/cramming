# Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
# A subarray is a contiguous part of an array.

# Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
# Output: 6
# Explanation: [4,-1,2,1] has the largest sum = 6.

# SOLUTION: Use dynamic programming => Time complexity O(n)
# Alternatively we can use greedy algorithm
# Ref: https://www.geeksforgeeks.org/largest-sum-contiguous-subarray/
# Ref: https://medium.com/@rsinghal757/kadanes-algorithm-dynamic-programming-how-and-why-does-it-work-3fd8849ed73d

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  global_max = local_max = nums[0]

  # Local max at index i is the maximum of nums[i] and the sum of nums[i] and local_max at index-1
  nums[1..-1].each do |num|
    local_max = [num, num + local_max].max
    global_max = local_max if local_max > global_max
  end
  global_max
end
