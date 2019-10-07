# https://www.codewars.com/kata/sort-numbers/train/ruby

require 'awesome_print'

def solution(nums)
  if nums.nil?
    return []
  else
    return nums.sort
  end
end

answer = solution([1, 2, 10, 50, 5])
ap answer
# [1,2,5,10,50]

answer = solution(nil)
ap answer
# []

# Another Way
def solution2(nums)
  Array(nums).sort
end

answer = solution2([1, 2, 10, 50, 5])
ap answer
# [1,2,5,10,50]

answer = solution2(nil)
ap answer
# []
