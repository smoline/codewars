# https://www.codewars.com/kata/lost-number-in-number-sequence/train/ruby

require 'ap'

def find_deleted_number(array, mixed_array)
  result = 0
  array.each do |num|
    unless mixed_array.include? num
      result = num
    end
  end
  return result
end

array = [1,2,3,4,5]
mixed_array = [3,4,1,5]
answer = find_deleted_number(array, mixed_array)
ap answer
# 2

array = [1,2,3,4,5,6,7,8,9]
mixed_array = [1,9,7,4,6,2,3,8]
answer = find_deleted_number(array, mixed_array)
ap answer
# 5

array = [1,2,3,4,5,6,7,8,9]
mixed_array = [5,7,6,9,4,8,1,2,3]
answer = find_deleted_number(array, mixed_array)
ap answer
# 0

# Another way
def find_deleted_number(array, mixed_array)
  (array - mixed_array).pop || 0
end

array = [1,2,3,4,5]
mixed_array = [3,4,1,5]
answer = find_deleted_number(array, mixed_array)
ap answer
# 2

array = [1,2,3,4,5,6,7,8,9]
mixed_array = [1,9,7,4,6,2,3,8]
answer = find_deleted_number(array, mixed_array)
ap answer
# 5

array = [1,2,3,4,5,6,7,8,9]
mixed_array = [5,7,6,9,4,8,1,2,3]
answer = find_deleted_number(array, mixed_array)
ap answer
# 0
