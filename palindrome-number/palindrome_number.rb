def palindrome?(x)
  return false if x < 0

  reversed = 0
  num = x
  while num > 0
    reversed = reversed * 10 + num % 10
    num /= 10
  end
  reversed == x
end
