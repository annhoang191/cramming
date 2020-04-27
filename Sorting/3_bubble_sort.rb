# Repeatedly swap the adjacent elements if they are in wrong order
# Rarely useful so rather use insertion sort
# O(n^2)

# INPUT: [3, 5, 4, 6, 1]
# OUTPUT: [1, 3, 4, 5, 6]

def bubble_sort nums
  swap = true
  loop_times = nums.length - 1
  while swap
    swap = false # immediately after the beginning of your loop, there have been no swaps
    loop_times.times do |idx|
      if nums[idx] > nums[idx + 1]
        nums[idx], nums[idx + 1] = nums[idx + 1], nums[idx]
        swap = true
      end
    end
  end
  nums
end

p bubble_sort [3, 5, 4, 6, 1]
