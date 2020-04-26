# Given a fixed length array arr of integers,
# duplicate each occurrence of zero,
# shifting the remaining elements to the right.
# elements beyond the length of the original array are not written.

# INPUT: [1,0,2,3,0,4,5,0]
# OUTPUT: [1,0,0,2,3,0,0,4]

def duplicate_zeros nums
  idx = 0
  length = nums.length
  while idx < length
    if nums[idx] == 0
      nums.insert idx, 0
      nums.pop
      idx += 1
    end
    idx += 1
  end

  nums
end

p duplicate_zeros [1,0,2,3,0,4,5,0]
