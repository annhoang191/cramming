# a professional robber planning to rob houses along a street.
# Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that
# adjacent houses have security systems connected
# and it will automatically contact the police if two adjacent houses were broken into on the same night.

# Given an integer array nums representing the amount of money of each house,
# return the maximum amount of money you can rob tonight without alerting the police.

# Input: nums = [1,2,3,1]
# Output: 4
# Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
# Total amount you can rob = 1 + 3 = 4.

# Solution: Use dynamic programming or kadane algorithm as the maximum subarray problem
# Time complexity: O(n)
# Ref: https://www.tutorialcup.com/leetcode-solutions/house-robber-leetcode-solution.htm

# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.empty?
  return nums.first if nums.size == 1

  money_robbed = [nums[0], [nums[0],nums[1]].max]

  nums[0..-1].each_with_index do |num, i|
    next if i == 0 || i == 1
    money_robbed << [num + money_robbed[i - 2], money_robbed[i - 1]].max
  end

  money_robbed.last
end
