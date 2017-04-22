# https://www.codewars.com/kata/is-this-a-triangle/train/ruby

def isTriangle(a,b,c)
  sorted = [a,b,c].sort
  greatest_side = sorted.pop
  greatest_side < sorted[0] + sorted[1]
end
