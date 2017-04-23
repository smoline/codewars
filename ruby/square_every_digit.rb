# https://www.codewars.com/kata/square-every-digit/train/ruby

require 'ap'

def square_digits(num)
  new_array = num.to_s.chars
  new_num = []
  new_array.each do |number|
    new_num << number.to_i * number.to_i
  end
  return new_num.join.to_i
end

answer = square_digits(3212)
ap answer
# 9414

answer = square_digits(2112)
ap answer
# 4114

answer = square_digits(1111)
ap answer
# 1111

answer = square_digits(1234321)
ap answer
# 14916941

answer = square_digits(0)
ap answer
# 0
