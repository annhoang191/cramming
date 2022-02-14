# Given an array, rotate the array to the right by k steps, where k is non-negative.

def rotate(nums, k)
  k.times {|i| nums.unshift(nums.pop)}
end
