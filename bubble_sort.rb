def bubble_sort(array)
  n = array.length

  for i in 0...n-1 do
    swapped = false
    for j in 0...n-i-1 do
      if array[j] > array[j+1]
        array[j], array[j+1] = array[j+1], array[j]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end
