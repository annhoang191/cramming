# source: leetcode
# Given an array nums of integers
# return how many of them contain an even number of digits.
# INPUT: nums = [12,345,2,6,7896]
# OUTPUT: 2

def find_numbers(nums)
  counter = 0
  nums.each do |num|
      counter += 1 if num.to_s.length % 2 == 0
  end
  counter
end

p find_numbers [12,345,2,6,7896]
