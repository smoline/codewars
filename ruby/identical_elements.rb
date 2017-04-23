# https://www.codewars.com/kata/identical-elements/train/ruby

require 'ap'

def duplicate_elements(m, n)
  m.each do |element|
    if n.include?(element)
      return true
    end
  end
  return false
end

answer = duplicate_elements([1, 2, 3, 4, 5], [1, 6, 7, 8, 9])
ap answer
# true

answer = duplicate_elements([9, 8, 7], [8, 1, 3])
ap answer
# true

answer = duplicate_elements([9, 8, 7], [6, 1, 3])
ap answer
# false
