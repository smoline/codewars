# https://www.codewars.com/kata/even-or-odd/train/ruby

require 'awesome_print'

def even_or_odd(number)
  number % 2 == 0 ? "Even" : "Odd"
end

number = 2
answer = even_or_odd(number)
ap answer
# "Even"

number = 3
answer = even_or_odd(number)
ap answer
# "Odd"
