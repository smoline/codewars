# https://www.codewars.com/kata/simple-fun-number-182-happy-g/train/ruby
require 'ap'

# Simple Fun #182: Happy "g"

def happy_g(s)
  array = s.chars
  array.each_with_index do |char, index|
    if char == "g" && array[index + 1] != "g" && array[index - 1] != "g"
      return false
    elsif index == 0 && char == "g" && array[index + 1] != "g"
      return false
    end
  end
  return true
end

# See if you can get rid of the `return` inside the each loop by using an *additional* enumerable chained onto your `each_with_index`

answer = happy_g("g ggggggg")
ap answer
# false

answer = happy_g("gg0gg3gg0gg")
ap answer
# true

answer = happy_g("gog")
ap answer
# false

answer = happy_g("ggg ggg g ggg")
ap answer
# false

answer = happy_g("A half of a half is a quarter.")
ap answer
# true

answer = happy_g("good grief")
ap answer
# false

answer = happy_g("bigger is ggooder")
ap answer
# true

answer = happy_g("gggggggggg")
ap answer
# true
