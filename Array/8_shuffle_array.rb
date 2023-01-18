# Given an integer array nums,
# design an algorithm to randomly shuffle the array.
# All permutations of the array should be equally likely as a result of the shuffling.


class Solution
  def initialize nums
    @nums = nums
  end

  def reset
    @nums
  end

  def shuffle
    @nums.shuffle
  end
end
