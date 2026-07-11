def quick_sort(array)
  return array if array.length <= 1

  pivot = array.delete_at(rand(array.length))
  left, right = array.partition { |element| element <= pivot }
  return *quick_sort(left), pivot, *quick_sort(right)
end
