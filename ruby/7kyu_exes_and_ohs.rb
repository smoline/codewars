# https://www.codewars.com/kata/exes-and-ohs/train/ruby

require 'awesome_print'

def XO(string)
  string.downcase.count('x') == string.downcase.count('o')
end

string = 'oxOX0'
answer = XO(string)
ap answer
# true

string = 'xxxoo'
answer = XO(string)
ap answer
# false
