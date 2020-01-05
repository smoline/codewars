# https://www.codewars.com/kata/averages-of-numbers/train/ruby

require 'awesome_print'

def averages(array)
  index = 0
  new_array = []
  if array
    while index < array.count - 1
      num1 = array.fetch(index)
      num2 = array.fetch(index + 1)
      new_num = if (num1 + num2) % 2 == 0
                  (num1 + num2) / 2
                else
                  ((num1 + num2).to_f / 2)
                end
      new_array << new_num
      index += 1
    end
  end
  return new_array
end

array = [2, 2, 2, 2, 2]
answer = averages(array)
ap answer
# [2, 2, 2, 2]

array = [2, -2, 2, -2, 2]
answer = averages(array)
ap answer
# [0, 0, 0, 0]

array = [1, 3, 5, 1, -10]
answer = averages(array)
ap answer
# [2, 4, 3, -4.5]

array = []
answer = averages(array)
ap answer
# []

array = [nil]
answer = averages(array)
ap answer
# []
