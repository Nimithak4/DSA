# Problem: valid palindrome check (using two pointers)
def palindrome?(str)
  chars = str.downcase.gsub(/[^a-z0-9]/, '')
  left, right = 0, chars.length - 1
  while left < right
    return false if chars[left] != chars[right]
    left += 1
    right -= 1
  end

  true
end

p palindrome?("A man, a plan, a canal: Panama")  # => true
p palindrome?("race a car")
