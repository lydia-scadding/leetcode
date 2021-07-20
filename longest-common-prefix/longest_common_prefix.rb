def longest_common_prefix(strs)
  return "" if strs == []
  return strs.first if strs.length == 1

  longest = ""
  # strs[0].chars.each_with_index do |char, idx|
  #   if strs.all? { |str| str[idx] == char }
  #     longest << char
  #   else
  #     break
  #   end
  # end
  idx = 0
  while strs.all? { |str| str[idx] == strs.first[idx] }
    longest << strs.first[idx]
    idx += 1
  end
  longest
end
