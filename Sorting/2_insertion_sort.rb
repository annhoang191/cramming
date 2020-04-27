# Pick an element and insert it into sorted sequence
# O(n^2)

# INPUT: [3, 5, 4, 6, 1]
# OUTPUT: [1, 3, 4, 5, 6]

def insertion_sort nums
  nums.length.times do |idx|
    while idx > 0
      if nums[idx-1] > nums[idx]
        nums[idx], nums[idx-1] = nums[idx-1], nums[idx]
      else
        break
      end
      idx -= 1
    end
  end
  nums
end

p insertion_sort [3, 5, 4, 6, 1]
