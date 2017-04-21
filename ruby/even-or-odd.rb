# https://www.codewars.com/kata/even-or-odd/train/ruby
require 'ap'

def even_or_odd(number)
  number % 2 == 0 ? "Even" : "Odd"
end

number = 2
answer = even_or_odd(number)
ap answer
