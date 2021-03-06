# https://www.codewars.com/kata/multiples-of-3-and-5/train/ruby

require 'awesome_print'

# class Array; def sum; self.inject(0, :+); end; end
def solution(number)
  array = []
  (0...number).each do |num|
    if num % 3 == 0
      array << num
    elsif num % 5 == 0
      array << num
    end
  end
  array.uniq!
  return array.sum
end

# TDD
# describe "Solution" do
#   it "should test for something" do
#     Test.assert_equals(solution(10), 23)
#     Test.assert_equals(solution(50), 543)
#     Test.assert_equals(solution(100), 2318)
#     Test.assert_equals(solution(203), 9569)
#   end
# end

number = 10
answer = solution(number)
ap answer
# 23

number = 50
answer = solution(number)
ap answer
# 543

number = 100
answer = solution(number)
ap answer
# 2318

number = 203
answer = solution(number)
ap answer
# 9569

# Another Way
def solution1(number)
  (1...number).select {|i| i % 3 == 0 || i % 5 == 0}.inject(:+)
end

number = 10
answer = solution1(number)
ap answer
# 23

number = 50
answer = solution1(number)
ap answer
# 543

number = 100
answer = solution1(number)
ap answer
# 2318

number = 203
answer = solution1(number)
ap answer
# 9569
