def longest_substring(s)
  current_chars = []
  max_length = 0

  (0...s.length).each do |i|
    if current_chars.include?(s[i])
      idx = current_chars.index(s[i]) + 1
      current_chars = current_chars[idx..-1]
    end
    current_chars << s[i]
    max_length = current_chars.length > max_length ? current_chars.length : max_length
  end
  max_length
end
