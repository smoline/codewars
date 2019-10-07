# https://www.codewars.com/kata/sort-arrays-ignoring-case/train/ruby

require 'awesome_print'

def sortme(names)
  return names.sort_by(&:downcase)
end

answer = sortme([ "Hello", "there", "I'm", "fine"])
ap answer
# ["fine", "Hello", "I'm", "there" ]
