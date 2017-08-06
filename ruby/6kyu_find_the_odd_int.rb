# https://www.codewars.com/kata/find-the-odd-int/train/ruby

require 'ap'

def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end

answer = find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
ap answer
# 5

answer = find_it([1,1,2,-2,5,2,4,4,-1,-2,5])
ap answer
# -1

answer = find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])
ap answer
# 5

answer = find_it([10])
ap answer
# 10

answer = find_it([1,1,1,1,1,1,10,1,1,1,1])
ap answer
# 10

# Another Way
def find_it(seq)
  seq.uniq.each do |val|
    return val if seq.count(val).odd?
  end
end

answer = find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
ap answer
# 5

answer = find_it([1,1,2,-2,5,2,4,4,-1,-2,5])
ap answer
# -1

answer = find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])
ap answer
# 5

answer = find_it([10])
ap answer
# 10

answer = find_it([1,1,1,1,1,1,10,1,1,1,1])
ap answer
# 10

# Another Good Way
def find_it(seq)
  seq.reduce(:^)
end

answer = find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
ap answer
# 5

answer = find_it([1,1,2,-2,5,2,4,4,-1,-2,5])
ap answer
# -1

answer = find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])
ap answer
# 5

answer = find_it([10])
ap answer
# 10

answer = find_it([1,1,1,1,1,1,10,1,1,1,1])
ap answer
# 10
