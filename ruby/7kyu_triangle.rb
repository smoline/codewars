# https://www.codewars.com/kata/is-this-a-triangle

# Implement a method that accepts 3 integer values a, b, c. The method should return true if a 
# triangle can be built with the sides of given length and false in any other case.

# (In this case, all triangles must have surface greater than 0 to be accepted).
require 'awesome_print'

def isTriangle(a,b,c)
  sorted = [a,b,c].sort
  greatest_side = sorted.pop
  greatest_side < sorted[0] + sorted[1]
end

answer = isTriangle(1, 2, 2)
ap answer
# true

answer = isTriangle(7, 2, 2)
ap answer
# false
