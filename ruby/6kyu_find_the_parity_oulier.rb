# https://www.codewars.com/kata/find-the-parity-outlier/train/ruby

require 'awesome_print'

def find_outlier(arr)
  even_ints = []
  odd_ints = []
  arr.each { |num| num.odd? ? odd_ints << num : even_ints << num }
  odd_ints.length == 1 ? odd_ints[0] : even_ints[0]
end

answer = find_outlier([0, 1, 2])
ap answer
# 1

answer = find_outlier([1, 2, 3])
ap answer
# 2

answer = find_outlier([2, 6, 8, 10, 3])
ap answer
# 3

# another way
def find_outlier1(integers)
  integers.partition(&:odd?).find(&:one?).first
end

answer = find_outlier1([0, 1, 2])
ap answer
# 1

answer = find_outlier1([1, 2, 3])
ap answer
# 2

answer = find_outlier1([2, 6, 8, 10, 3])
ap answer
# 3