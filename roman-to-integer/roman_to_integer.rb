require_relative 'values'

def roman_to_int(s)
  result = 0

  s.chars.each_with_index do |char, idx|
    next_val = idx == s.length - 1 ? nil : VALUES[s[idx + 1]]
    if next_val.nil? || VALUES[char] >= next_val
      result += VALUES[char]
    else
      result -= VALUES[char]
    end
  end
  result
end
