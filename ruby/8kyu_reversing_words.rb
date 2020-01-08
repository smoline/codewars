# https://www.codewars.com/kata/reversing-words-in-a-string/train/ruby

require 'awesome_print'

def reverse(string)
  string.split(" ").reverse.join(" ")
end

answer = reverse('I am an expert at this')
ap answer
# 'this at expert an am I'

answer = reverse('This is so easy')
ap answer
# 'easy so is This'

answer = reverse('no one cares')
ap answer
# 'cares one no'

answer = reverse('')
ap answer
# ''

answer = reverse('CodeWars')
ap answer
# 'CodeWars'
