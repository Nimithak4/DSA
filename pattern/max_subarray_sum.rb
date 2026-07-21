# Problem: max sum of k consecutive elements — O(n) not O(n*k)
def max_subarray_sum(arr, k)
  window_sum = arr[0...k].sum
  max_sum = window_sum

  (k...arr.length).each do |i|
    window_sum += arr[i]
    window_sum -= arr[i - k]
    max_sum = [window_sum, max_sum].max
  end

  max_sum
end

p max_subarray_sum([2, 1, 5, 1, 3, 2], 3)   # => 9  (5+1+3)
p max_subarray_sum([2, 3, 4, 1, 5],    2)   # => 7  (3+4)
