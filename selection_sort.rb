def selection_sort(array)
  n = array.length
  for i in 0...(n-1) do
    minimum_index = i
    for j in (i+1)...n do
      if array[j] < array[minimum_index]
        minimum_index = j
      end
    end
    array[i], array[minimum_index] = array[minimum_index], array[i]
  end
  array
end
