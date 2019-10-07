# https://www.codewars.com/kata/dont-give-me-five/train/ruby

# In this kata you get the start number and the end number of a region and should return
# the count of all numbers except numbers with a 5 in it. The start and the end number are both inclusive!

require 'awesome_print'

def dont_give_me_five(start_number,end_number)
  (start_number..end_number).reject { |number| number.to_s.include?("5") }.count
end

answer = dont_give_me_five(1, 9)
ap answer
# 8

answer = dont_give_me_five(4, 17)
ap answer
# 12
