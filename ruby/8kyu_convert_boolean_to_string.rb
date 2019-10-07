# https://www.codewars.com/kata/convert-a-boolean-to-a-string

require 'awesome_print'

def boolean_to_string(b)
  b ? "true" : "false"
end

answer = boolean_to_string(true)
ap answer
# "true"

answer = boolean_to_string(false)
ap answer
# "false"