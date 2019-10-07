# https://www.codewars.com/kata/is-the-string-uppercase

require 'awesome_print'
class String
  def is_upcase?
    chars.all? { |char| char.upcase == char }
  end
end

answer = "c".is_upcase?
ap answer
# false

answer = "HELLO".is_upcase?
ap answer
# true

answer = "hello".is_upcase?
ap answer
# false

answer = "Hello".is_upcase?
ap answer
# false
