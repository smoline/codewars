# https://www.codewars.com/kata/52b757663a95b11b3d00062d/train/ruby

require 'awesome_print'

def weirdcase string
  result = ""
  i = 0
  string.split("").each_with_index do |x|
    result += i.even? ? x.upcase : x.downcase
    x != " " ? i += 1 : i = 0
  end
  result
end

answer = weirdcase('This')
ap answer
# 'ThIs'

answer = weirdcase('is')
ap answer
# 'Is'

answer = weirdcase('This is a test')
ap answer
# 'ThIs Is A TeSt'

# another way
def weirdcase1(string)
  string.gsub(/(\w{1,2})/) { |s| $1.capitalize }
end

answer = weirdcase1('This')
ap answer
# 'ThIs'

answer = weirdcase1('is')
ap answer
# 'Is'

answer = weirdcase1('This is a test')
ap answer
# 'ThIs Is A TeSt'