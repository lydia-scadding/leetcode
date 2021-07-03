def reverse(x)
  reversed = 0
  original = x.abs
  while original > 0
    reversed = reversed * 10 + original % 10
    original /= 10
  end
  reversed = x.negative? ? reversed * -1 : reversed
  reversed < 2**31 && reversed > -2**31 ? reversed : 0
end

# Alternative solution, fractionally less efficient:

# def reverse(x)
#   reversed = x.to_s.gsub(/\d+/, &:reverse).to_i
#   reversed < 2**31 && reversed > -2**31 ? reversed : 0
# end
