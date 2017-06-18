require 'ap'

# https://www.codewars.com/kata/simple-fun-number-177-rank-of-element/train/ruby
# Simple Fun #177: Rank Of Element

def rank_of_element(array,i)
  index = i - 1
  count = 0
  while index >= 0
    if array[index] <= array[i]
      count += 1
    end
    index -= 1
  end
  index = i + 1
  while array[index] != nil
    if array[index] < array[i]
      count += 1
    end
    index += 1
  end
  return count
end

answer = rank_of_element([2, 1, 2, 1, 2],2)
ap answer
# 3

answer = rank_of_element([2, 1, 2, 2, 2],2)
ap answer
# 2

answer = rank_of_element([3, 2, 3, 4, 1],0)
ap answer
# 2

answer = rank_of_element([3, 2, 3, 4, 1],1)
ap answer
# 1

answer = rank_of_element([3, 2, 3, 4, 1],2)
ap answer
# 3

def rank_of_element(array,i)
  elements_to_left = array[0...i]
  elements_to_right = array[i+1..-1]
  count_left = elements_to_left.count { |element| element <= array[i] }
  count_right = elements_to_right.count { |element| element < array[i] }

  count_left + count_right
end

answer = rank_of_element([2, 1, 2, 1, 2],2)
ap answer
# 3

answer = rank_of_element([2, 1, 2, 2, 2],2)
ap answer
# 2

answer = rank_of_element([3, 2, 3, 4, 1],0)
ap answer
# 2

answer = rank_of_element([3, 2, 3, 4, 1],1)
ap answer
# 1

answer = rank_of_element([3, 2, 3, 4, 1],2)
ap answer
# 3

def rank_of_element(array,i)
  array[0...i].count { |element| element <= array[i] } +
  array[i+1..-1].count { |element| element < array[i] }
end

answer = rank_of_element([2, 1, 2, 1, 2],2)
ap answer
# 3

answer = rank_of_element([2, 1, 2, 2, 2],2)
ap answer
# 2

answer = rank_of_element([3, 2, 3, 4, 1],0)
ap answer
# 2

answer = rank_of_element([3, 2, 3, 4, 1],1)
ap answer
# 1

answer = rank_of_element([3, 2, 3, 4, 1],2)
ap answer
# 3
