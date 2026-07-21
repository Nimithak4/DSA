# Variable window: longest substring without repeating chars
def length_of_longest_substring(str)
  seen = {}
  left = 0
  max_len = 0
  str.each_char.with_index do | char, right |
    if seen.key?(char) && seen[char] >= left
      left = seen[char] + 1
    end

    seen[char] = right
    max_len = [max_len, right - left + 1].max
   end
   max_len
end

p length_of_longest_substring("abcabcbb")   # => 3  ("abc")
p length_of_longest_substring("pwwkew")     # => 3  ("wke")
