# Problem: two sum (the most common DSA interview question)
# Given an array and a target, return indices of two numbers that sum to target

def two_sum(arr, target)
  hash = {}
  arr.each_with_index do|a, i|
    c = target - a
    if hash.key?(c)
      return [hash[c], i]
    end

    hash[a] = i
  end
  nil
end

p two_sum([2, 7, 11, 15], 9)   # => [0, 1]  (2 + 7 = 9)
p two_sum([3, 2, 4], 6)        # => [1, 2]  (2 + 4 = 6)
