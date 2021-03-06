# https://www.codewars.com/kata/unscrambled-eggs/train/ruby

require 'awesome_print'

def unscramble_eggs(word)
  index = 0
  array = word.chars
  newarray = []
  while array.length > index
    if ["a","e","i","o","u"," ","A","E","I","O","U"].include?(array[index])
      index += 1
    else
      array.slice!(index + 1, 3)
      index += 1
    end
  end
  return array.join
end

word = "ceggodegge heggeregge"
answer = unscramble_eggs(word)
ap answer
# "code here"

word = "FeggUNegg KeggATeggA"
answer = unscramble_eggs(word)
ap answer
# "FUN KATA"

# another way
def unscramble_eggs2(word)
  word.gsub(/egg/,"")
end

word = "ceggodegge heggeregge"
answer = unscramble_eggs2(word)
ap answer
# "code here"

word = "FeggUNegg KeggATeggA"
answer = unscramble_eggs2(word)
ap answer
# "FUN KATA"
