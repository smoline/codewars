require 'awesome_print'

def solution(string)
  result = ""
  string.split(//).each {|x| x == x.upcase ? result += " " + x : result += x}
  result
end

answer = solution("camelCasing")
ap answer
# "camel Casing"

answer = solution("camelCasingTest")
ap answer
# "camel Casing Test"

# another way
def solution1(string)
  string.gsub /([A-Z])/, ' \1'
end

answer = solution1("camelCasing")
ap answer
# "camel Casing"

answer = solution1("camelCasingTest")
ap answer
# "camel Casing Test"