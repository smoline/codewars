# https://www.codewars.com/kata/541c8630095125aba6000c00/train/ruby

require 'awesome_print'

def digital_root(n)
  n < 10 ? n : digital_root(n / 10 + n % 10)
end

answer = digital_root(16)
ap answer
# 7

answer = digital_root(456)
ap answer
# 6

def digital_root1(n)
  num = 0
  n.to_s.split("").each {|x| num += x.to_i}
  num.to_i > 9 ? digital_root(num.to_i) : num.to_i
end

answer = digital_root1(16)
ap answer
# 7

answer = digital_root1(456)
ap answer
# 6

def digital_root2(n)
  n < 10 ? n : digital_root(n.to_s.split(//).map(&:to_i).inject(:+));
end

answer = digital_root2(16)
ap answer
# 7

answer = digital_root2(456)
ap answer
# 6
