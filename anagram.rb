# Frequency counter pattern
# Problem: check if two strings are anagrams

def anagram(s1, s2)
  return false if s1.length != s2.length

  freq = Hash.new(0)

  s1.each_char { |c| freq[c] += 1}
  s2.each_char { |c| freq[c] -= 1}

  freq.values.all?(&:zero?)
end
