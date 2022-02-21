# The most basic sorting algorithm
# Just iterate and swap element in a simple term
# O(n^2)

# INPUT: [3, 5, 4, 6, 1]
# OUTPUT: [1, 3, 4, 5, 6]

def selection_sort nums
  loop_numbers = nums.length - 1
  loop_numbers.times do |index|
    min_idx = index
    for j in (index + 1)..loop_numbers
      min_idx = j if nums[j] < nums[min_idx]
    end

    nums[index], nums[min_idx] = nums[min_idx], nums[index] if min_idx != index
  end
  nums
end

p selection_sort [3, 5, 4, 6, 1]
