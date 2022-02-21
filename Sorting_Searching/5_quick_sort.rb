# Pick an element as pivot & partition the given array around the picked pivot
# O(nlogn)

# INPUT: [3, 5, 4, 6, 1]
# OUTPUT: [1, 3, 4, 5, 6]

def quick_sort nums
  return nums if nums.length <= 1

  pivot = nums.pop
  left, right = [], []

  nums.each do |num|
    num <= pivot ? left.push(num) : right.push(num)
  end

  nums = quick_sort(left) + [pivot] + quick_sort(right)
end

p quick_sort [3, 5, 4, 6, 1]
