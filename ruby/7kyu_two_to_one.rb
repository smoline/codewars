# https://www.codewars.com/kata/two-to-one

require 'awesome_print'

def longest(string1, string2)
  longest_string = ()
  array1 = (string1.chars + string2.chars).sort
  array1.each do |char|
    if longest_string == nil
      longest_string = char
    end
    unless longest_string.include?(char)
      longest_string << char
    end
  end
  return longest_string
end

string1 = "aretheyhere"
string2 = "yestheyarehere"
answer = longest(string1, string2)
ap answer
# "aehrsty"

string1 = "loopingisfunbutdangerous"
string2 = "lessdangerousthancoding"
answer = longest(string1, string2)
ap answer
# "abcdefghilnoprstu"
