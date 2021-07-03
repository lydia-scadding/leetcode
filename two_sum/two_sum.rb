def two_sum(nums, target)
  nums.each_with_index do |num, idx|
    (idx + 1...nums.length).each { |x| return [idx, x] if num + nums[x] == target }
  end
end
