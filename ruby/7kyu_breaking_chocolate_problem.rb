# https://www.codewars.com/kata/breaking-chocolate-problem/train/ruby

require 'awesome_print'

def break_chocolate(n, m)
  if n > m
    (m - 1) + (n - 1) * m
  elsif n < m
    (n - 1) + (m - 1) * n
  elsif n + m == 0
    return 0
  else
    (n - 1) + (m - 1) * n
  end
end

answer = break_chocolate(5, 5)
ap answer
# 24

answer = break_chocolate(7, 4)
ap answer
# 27

answer = break_chocolate(10, 1)
ap answer
# 9
