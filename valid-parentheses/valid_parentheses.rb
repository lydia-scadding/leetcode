def is_valid(s)
  parens = ["()", "[]", "{}"]
  prev_length = s.length
  while s.length > 0
    parens.each { |paren| s.gsub!(paren, "") }
    return false if s.length == prev_length

    prev_length = s.length
  end
  true
end
