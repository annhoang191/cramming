# source: leetcode
# Given a binary array, find the maximum number of consecutive 1s in this array.
# Input: [1,1,0,1,1,1]
# Output: 3

def find_max_consecutive_ones(nums)
  counter, result = 0, 0
  nums.each do |num|
      counter += 1 if num == 1
      counter = 0 if num == 0
      result = counter if counter > result
  end

  result
end

p find_max_consecutive_ones [1,1,0,1,1,1]
