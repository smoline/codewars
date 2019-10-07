# https://www.codewars.com/kata/float-precision/train/ruby

require 'awesome_print'

def solution(value)
  value.round(2)
end

answer = solution(23.23456)
ap answer
# 23.23

answer = solution(1.546)
ap answer
# 1.55