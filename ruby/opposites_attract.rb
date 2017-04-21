# https://www.codewars.com/kata/opposites-attract/train/ruby

require 'ap'

# Opposites Attract
def lovefunc( flower1, flower2 )
  flower1.even? && flower2.odd? || flower1.odd? && flower2.even?
end

answer = lovefunc(1,4)
ap answer
answer2 = lovefunc(2,2)
ap answer
