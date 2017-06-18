# https://www.codewars.com/kata/ensure-question
require 'ap'

def ensure_question(string)
  if string.include? "?"
    return string
  else
    return string + "?"
  end
end

answer = ensure_question("Yes")
ap answer
# => "Yes?"

answer = ensure_question("No?")
ap answer
# => "No?"

def ensure_question(string)
  string.end_with?("?") ? string : string + "?"
end

answer = ensure_question("kitty")
ap answer
# => "kitty?"

answer = ensure_question("No?")
ap answer
# => "No?"
