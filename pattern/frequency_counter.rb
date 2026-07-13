# Problem: are two arrays "equal" regardless of order?
# Naive: sort both and compare — O(n log n)
# Smart: compare frequencies — O(n)

def same_frequency?(arr1, arr2)
  return false if arr1.length != arr2.length

  freq = Hash.new(0)

  arr1.each { |a| freq[a] += 1 }
  arr2.each { |a| freq[a] -= 1 }

  freq.values.all?(&:zero?)
end

p same_frequency?([1, 2, 3, 1], [3, 1, 2, 1])  # => true
p same_frequency?([1, 2, 3],    [1, 2, 4])      # => false
