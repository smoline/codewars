# https://www.codewars.com/kata/calculate-string-rotation/train/ruby

require 'awesome_print'

def shifted_diff(first, second)
  (0..second.size).each {|n|return n if first == second.chars.rotate(n).join}
  -1
end

answer = shifted_diff("eecoff","coffee")
ap answer
# 4

answer = shifted_diff("Moose","moose")
ap answer
# -1

answer = shifted_diff("isn't","'tisn")
ap answer
# 2

answer = shifted_diff("coffee", "eecoff")
ap answer
# 2

answer = shifted_diff("Esham", "Esham")
ap answer
# 0

answer = shifted_diff("dog", "god")
ap answer
# nil

# Another way
def shifted_diff1(first, second)
  first.size == second.size && (second * 2).index(first) || -1
end

answer = shifted_diff1("eecoff","coffee")
ap answer
# 4

answer = shifted_diff1("Moose","moose")
ap answer
# -1

answer = shifted_diff1("isn't","'tisn")
ap answer
# 2

answer = shifted_diff1("coffee", "eecoff")
ap answer
# 2

answer = shifted_diff1("Esham", "Esham")
ap answer
# 0

answer = shifted_diff1("dog", "god")
ap answer
# nil