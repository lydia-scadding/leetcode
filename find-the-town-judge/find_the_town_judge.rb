# def find_judge(n, trust)
#   return -1 if trust.length < n - 1

#   trust_arr = (1..n).find_all { |i| trust.none? { |sub_arr| sub_arr.first == i } }

#   return -1 unless trust_arr.length == 1

#   judge_idx = trust_arr.first

#   if trust.count { |sub_arr| sub_arr.last == judge_idx } == n - 1
#     judge_idx
#   else
#     -1
#   end
# end

def find_judge(n, trust)
  return n if n == 1

  trustings = Array.new(n + 1, 0)

  trust.each do |a, b|
    trustings[a] -= 1
    trustings[b] += 1
  end

  trustings.find_index(n - 1) || -1
end
