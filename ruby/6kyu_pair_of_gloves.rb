# https://www.codewars.com/kata/58235a167a8cb37e1a0000db/train/ruby

require 'awesome_print'

def number_of_pairs(gloves)
  count = 0
  new_hash = Hash.new { |data,key| data[key] = 0 }
  gloves.each { |word| new_hash[word] += 1 }
  new_hash.each { |element, key| count += key / 2 }
  count
end

answer = number_of_pairs(["red","red"])
ap answer
# 1

answer = number_of_pairs(["red","green","blue"])
ap answer
# 0

answer = number_of_pairs(["gray","black","purple","purple","gray","black"])
ap answer
# 3

answer = number_of_pairs([])
ap answer
# 0

answer = number_of_pairs(["red","green","blue","blue","red","green","red","red","red"])
ap answer
# 4