# https://www.codewars.com/kata/opposites-attract/train/ruby

# Timmy & Sarah think they are in love, but around where they live, they will only know once they pick a flower each.
# If one of the flowers has an even number of petals and the other has an odd number of petals it means they are in love.

# Write a function that will take the number of petals of each flower and return true if they are in love and false if they aren't.

require 'awesome_print'

# Opposites Attract
def lovefunc(flower1, flower2)
  flower1.even? && flower2.odd? || flower1.odd? && flower2.even?
end

answer = lovefunc(1, 4)
ap answer
# true

answer = lovefunc(2, 2)
ap answer
# false
