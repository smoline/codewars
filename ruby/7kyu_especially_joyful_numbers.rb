# https://www.codewars.com/kata/especially-joyful-numbers/train/ruby

require 'awesome_print'

def number_joy(n)
  sum_of = 0
  if n == 1
    return true
  elsif n.to_s.length < 2
    return false
  else
    array = n.to_s.chars
    array.each do |char|
      sum_of += char.to_i
    end
    if n == sum_of * (sum_of.to_s.reverse).to_i
      return true
    else
      return false
    end
  end
end

answer = number_joy(1997)
ap answer
# false

answer = number_joy(1998)
ap answer
# false

answer = number_joy(1729)
ap answer
# true

answer = number_joy(18)
ap answer
# false

answer = number_joy(1)
ap answer
# true

answer = number_joy(81)
ap answer
# true

answer = number_joy(1458)
ap answer
# true
