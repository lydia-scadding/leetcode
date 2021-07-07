def longest_common_prefix(strs)
  longest = ""
  strs[0].chars.each_with_index do |char, idx|
    if strs.all? { |str| str[idx] == char }
      longest << char
    else
      break
    end
  end
  longest
end
