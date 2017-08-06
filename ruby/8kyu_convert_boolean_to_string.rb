# https://www.codewars.com/kata/convert-a-boolean-to-a-string

require 'ap'

def boolean_to_string(b)
  b ? "true" : "false"
end

answer = boolean_to_string(true)
ap answer
# "ture"
