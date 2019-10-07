# https://www.codewars.com/kata/last/train/ruby

require 'awesome_print'

def last(*list, x)
  ap "list = #{list}"
  ap "X = #{x}"
  case list.empty?
  when true
    case x
    when Array, String then x[-1]
    else x
    end
  else x
  end
end

answer = last([1,2,3,4,5])
ap answer
# 5

answer = last("abcde")
ap answer
# "e"

answer = last(1, "b", 3, "d", 5)
ap answer
# 5

answer = last(5)
ap answer
# 5
