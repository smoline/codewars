# https://www.codewars.com/kata/find-the-lucky-numbers/train/ruby

require 'ap'

def filter_lucky(list)
  newarray = []
  list.collect { |num|
    if num.to_s.include? "7"
      newarray << num
    end
  }
  return newarray
end

list = [7]
answer = filter_lucky(list)
ap answer

list = [77, 8]
answer = filter_lucky(list)
ap answer

list = [71, 9007, 69]
answer = filter_lucky(list)
ap answer
