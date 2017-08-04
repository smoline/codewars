# https://www.codewars.com/trainer/ruby

require 'ap'

def comp(array1, array2)
  return false if array1.nil? || array2.nil?
  array1.map {|num| num ** 2}.sort == array2.sort
end

answer = comp( [121, 144, 19, 161, 19, 144, 19, 11],
        [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])
ap answer
# true

def comp(array1, array2)
  return false if array1 == nil || array2 == nil
  result = false

  array2.sort!.map {|x| x}
  array1.sort!.each_with_index {|x,i| result = true if x*x != array2[i]}
  return !result
end

# Better Solution
def comp(array1, array2)
  array1.nil? || array2.nil? ? false : array1.sort.map {|v| v ** 2} == array2.sort
end
