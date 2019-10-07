# https://www.codewars.com/kata/fake-binary/train/ruby

require 'awesome_print'

def fake_bin(s)
  arr1 = s.chars.map { |char| char < '5' ? '0' : '1' }.join
end

answer = fake_bin('32578498')
ap answer
# "00111011"

answer = fake_bin('32130898')
ap answer
# "00000111"