# https://www.codewars.com/kata/jennys-secret-message/train/ruby

require 'awesome_print'

def greet(name)
  if name == 'Johnny'
    return "Hello, my love!"
  else
    return "Hello, #{name}!"
  end
end

answer = greet('Johnny')
ap answer
# "Hello, my love!"

answer = greet('Alex')
ap answer
# "Hello, Alex!"
