# Problem: remove duplicates from sorted array in-place
def remove_duplicates(arr)
  return 0 if arr.empty?

  slow = 0
  for fast in 1...arr.length do
    if arr[slow] != arr[fast]
      slow += 1
      arr[slow] = arr[fast]
    end
  end

  slow + 1
end

arr = [1, 1, 2, 3, 3, 4]

len = remove_duplicates(arr)

puts arr[0...len]
