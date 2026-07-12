# Two-pointer pattern — O(n) instead of O(n²)
# Problem: find two numbers that sum to a target (sorted array)

def two_sum_sorted(arr, target)
  left = 0
  right = arr.length - 1

  while (left<right)
    sum = arr[left] + arr[right]
    if sum == target
      return [arr[left], arr[right]]
    elsif sum < target
      left += 1
    else
      right -= 1
    end
  end

  nil
end
