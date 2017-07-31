# https://www.codewars.com/kata/float-precision/train/ruby

require 'ap'

def solution(value)
  value.round(2)
end

answer = solution(23.23456)
ap answer
# 23.23

answer = solution(1.546)
ap answer
# 1.55

# describe "Solution" do
#   it "should test for something" do
#     Test.assert_equals(solution(23.23456), 23.23, "This is just an example of how you can write your own TDD tests")
#     Test.assert_equals(solution(1.546), 1.55, "This is just an example of how you can write your own TDD tests")
#   end
# end
