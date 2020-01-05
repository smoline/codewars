# https://www.codewars.com/kata/incrementer

require 'awesome_print'

def incrementer(num)
  num.each_with_index.map { |x, i| (x + (i + 1)).to_s[-1].to_i}
end

answer = incrementer([])
ap answer
# []

answer = incrementer([1,2,3])
ap answer
# [2,4,6]

answer = incrementer([4,6,7,1,3])
ap answer
# [5,8,0,5,8]

answer = incrementer([3,6,9,8,9])
ap answer
# [4,8,2,2,4]

answer = incrementer([1,2,3,4,5,6,7,8,9,9,9,9,9,8])
ap answer
# [2,4,6,8,0,2,4,6,8,9,0,1,2,2]

# Another Way
def incrementer2(nums)
  nums.map.with_index(1){|num, idx| (num + idx) % 10}
end

answer = incrementer2([])
ap answer
# []

answer = incrementer2([1,2,3])
ap answer
# [2,4,6]

answer = incrementer2([4,6,7,1,3])
ap answer
# [5,8,0,5,8]

answer = incrementer2([3,6,9,8,9])
ap answer
# [4,8,2,2,4]

answer = incrementer2([1,2,3,4,5,6,7,8,9,9,9,9,9,8])
ap answer
# [2,4,6,8,0,2,4,6,8,9,0,1,2,2]
