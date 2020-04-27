# Divide array in 2 halves
# call itself for the 2 halves
# then merge the 2 sorted halves
# O(nlogn)

# INPUT: [3, 5, 4, 6, 1]
# OUTPUT: [1, 3, 4, 5, 6]

def merge_sort nums
  return nums if nums.length <= 1

  half_size = (nums.length / 2).floor

  left_arr = nums.take half_size
  right_arr = nums.drop half_size

  sorted_left = merge_sort left_arr
  sorted_right = merge_sort right_arr

  merge sorted_left, sorted_right
end

def merge left_arr, right_arr
  return left_arr if right_arr.empty?
  return right_arr if left_arr.empty?

  smallest_num = if left_arr.first <= right_arr.first
                   left_arr.shift
                 else
                   right_arr.shift
                 end
  recursive = merge left_arr, right_arr
  [smallest_num].concat recursive
end

p merge_sort [3, 5, 4, 6, 1]
