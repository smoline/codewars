# https://www.codewars.com/kata/ensure-question
require 'awesome_print'

def ensure_question(string)
  return string if string.include? "?"
  return string + "?"
end

answer = ensure_question("Yes")
ap answer
# => "Yes?"

answer = ensure_question("No?")
ap answer
# => "No?"

def ensure_question1(string)
  string.end_with?("?") ? string : string + "?"
end

answer = ensure_question1("kitty")
ap answer
# => "kitty?"

answer = ensure_question1("No?")
ap answer
# => "No?"
