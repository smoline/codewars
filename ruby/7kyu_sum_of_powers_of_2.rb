# https://www.codewars.com/kata/5d9f95424a336600278a9632/train/ruby

require 'awesome_print'

def powers(n)
  n.to_s(2).split('').reverse().map.with_index { |x, i| x.to_i == 1 ? 2**i : 0 }.select{ |num| num > 0 }
end

answer = powers(1)
ap answer
# [1]

answer = powers(2)
ap answer
# [2]

answer = powers(6)
ap answer
# [2, 4]

# another way
def powers1(n)
  n.to_s(2).to_i.digits.map.with_index { |c, i| c.to_i * 2**i }.reject(&:zero?)
end

answer = powers1(1)
ap answer
# [1]

answer = powers1(2)
ap answer
# [2]

answer = powers1(6)
ap answer
# [2, 4]
