# source: leetcode
# Given an array of integers A sorted in non-decreasing order,
# Return an array of the squares of each number, also in sorted non-decreasing order.
# INPUT: [-4,-1,0,3,10]
# OUTPUT: [0,1,9,16,100]

def square_sorted_array nums
  nums.map {|num| num**2}.sort
end

p square_sorted_array [-4,-1,0,3,10]
