# https://www.codewars.com/kata/find-the-lucky-numbers/train/ruby

require 'awesome_print'

def filter_lucky(list)
  newarray = []
  list.collect do |num|
    if num.to_s.include? "7"
      newarray << num
    end
  end
  return newarray
end

list = [7]
answer = filter_lucky(list)
ap answer
# [7]

list = [77, 8]
answer = filter_lucky(list)
ap answer
# [77]

list = [71, 9007, 69]
answer = filter_lucky(list)
ap answer
# [71, 9007]
