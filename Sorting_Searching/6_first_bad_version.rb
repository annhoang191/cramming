# Scenario: the latest version of your product fails the quality check
# Since each version is developed based on the previous version,
# all the versions after a bad version are also bad.

# N versions [1, 2,..., n] and you have to find out the first bad one
# An api bool isBadVersion(version) which returns if version is bad
# Minimize the number of calls to the api

# Input: n = 5, bad = 4
# Output: 4

# call isBadVersion(3) -> false
# call isBadVersion(5) -> true
# call isBadVersion(4) -> true

# SOLUTION: To find the first bad version in the best time complexity,
# use a standard binary search => O(logN) time.


# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  return 1 if n == 1
  left, right = 0, n

  while left != right do
    mid = left + (right - left) / 2
    right = mid if is_bad_version(mid)
    left = mid + 1 if !is_bad_version(mid)
  end
  left
end
