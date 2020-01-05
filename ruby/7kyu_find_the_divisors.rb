# https://www.codewars.com/kata/find-the-divisors/train/ruby

require 'awesome_print'

def divisors(n)
  result = []
  2.upto(n - 1) do |i|
    if n % i == 0
      result.push(i)
    end
  end
  return "#{n} is prime" if result.length == 0
  return result
end

answer = divisors(15)
ap answer
# [3, 5]

answer = divisors(253)
ap answer
# [11, 23]

answer = divisors(24)
ap answer
# [2, 3, 4, 6, 8, 12]
