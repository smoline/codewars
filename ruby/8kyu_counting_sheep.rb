# https://www.codewars.com/kata/counting-sheep-dot-dot-dot/train/ruby

require 'awesome_print'

def countSheeps array
  count = 0
  array.each do |value|
    if value == true
      count += 1
    end
  end
  return count
end

answer = countSheeps [true, true, true, false, true, true,
                      false, true, true, true, true, false,
                      true, false, true, true, false, false]
ap answer
# 12