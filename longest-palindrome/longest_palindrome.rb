def longest_palindrome(s)
  longest_pal = ""

  (0...s.length).each do |i|
    longest_odd = expand(s, i, i)
    longest_pal = longest_odd if longest_odd.length > longest_pal.length

    longest_even = expand(s, i, i + 1)
    longest_pal = longest_even if longest_even.length > longest_pal.length
  end
  longest_pal
end

def expand(string, lower_idx, upper_idx)
  while string[lower_idx] == string[upper_idx] && lower_idx >= 0 && upper_idx < string.length
    lower_idx -= 1
    upper_idx += 1
  end
  string[lower_idx + 1..upper_idx - 1]
end
