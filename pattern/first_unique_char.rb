# Problem: find first non-repeating character

def first_unique_char(str)
  freq = Hash.new(0)
  str.each_char { |s| freq[s] += 1}
  str.each_char do |s|
    return s if freq[s] == 1
  end

  nil
end

p first_unique_char("leetcode")    # => "l"
p first_unique_char("aabb")        # => nil
