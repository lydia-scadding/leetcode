def reverse(x)
  x.to_s.gsub(/\d+/, &:reverse).to_i
end
