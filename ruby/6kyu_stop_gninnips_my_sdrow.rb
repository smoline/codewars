# https://www.codewars.com/kata/stop-gninnips-my-sdrow/train/ruby

require 'awesome_print'

def spinWords(string)
  array = string.split(" ")
  new_array = array.each do |word|
    if word.length >= 5
      word.reverse!
    end
  end
  return new_array.join(" ").to_s
end

answer = spinWords("Hey fellow warriors")
ap answer
# "Hey wollef sroirraw"

answer = spinWords( "This is a test")
ap answer
# "This is a test"

answer = spinWords( "This is another test" )
ap answer
# "This is rehtona test"

# Another Way
def spinWords(string)
  string.gsub(/\w{5,}/, &:reverse)
end

answer = spinWords("Hey fellow warriors")
ap answer
# "Hey wollef sroirraw"

answer = spinWords( "This is a test")
ap answer
# "This is a test"

answer = spinWords( "This is another test" )
ap answer
# "This is rehtona test"
