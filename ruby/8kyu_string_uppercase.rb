# https://www.codewars.com/kata/is-the-string-uppercase

require 'awesome_print'
class String
  def upcase?
    chars.all? { |char| char.upcase == char }
  end
end

answer = "c".upcase?
ap answer
# false

answer = "HELLO".upcase?
ap answer
# true

answer = "hello".upcase?
ap answer
# false

answer = "Hello".upcase?
ap answer
# false
