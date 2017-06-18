# https://www.codewars.com/kata/count-of-positives-slash-sum-of-negatives/train/ruby

require 'ap'

def count_positives_sum_negatives(lst)
  count = 0
  sum = 0
  lst.each do |x|
    if x < 0
      sum += x.to_i
    elsif x > 0
      count += 1
    end
  end
  return array = [count, sum]
end

lst = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
count_sum = count_positives_sum_negatives(lst)
ap count_sum
