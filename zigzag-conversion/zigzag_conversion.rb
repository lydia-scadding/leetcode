def convert(s, num_rows)
  return s if num_rows == 1

  hash = Hash.new { |h, k| h[k] = [] }

  pattern_length = num_rows + (num_rows - 2)

  s.chars.each_with_index do |char, idx|
    if idx % pattern_length < num_rows
      row = idx % pattern_length
    else
      row = pattern_length - (idx % pattern_length)
    end
    hash[row] << char
  end

  result = hash_to_result(hash)
end

def hash_to_result(hash)
  result = []

  hash.each_key do |key|
    result += hash[key]
  end

  result.flatten.join("")
end
