# https://www.codewars.com/kata/jennys-secret-message/train/ruby

require 'awesome_print'

def greet(name)
  return "Hello, my love!" if name == 'Johnny'
  return "Hello, #{name}!"
end

answer = greet('Johnny')
ap answer
# "Hello, my love!"

answer = greet('Alex')
ap answer
# "Hello, Alex!"
