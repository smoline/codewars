require 'awesome_print'

def array_diff(a, b)
  a - b
end

answer = array_diff([1, 2], [1])
ap answer
# [2]

answer = array_diff([1, 2, 2], [1])
ap answer
# [2, 2]

answer = array_diff([1, 2, 2], [2])
ap answer
# [1]

answer = array_diff([1, 2, 2], [])
ap answer
# [1, 2, 2]

answer = array_diff([], [1, 2])
ap answer
# []

# another way
def array_diff1(a, b)
  a.reject {|e| b.include? e}
end

answer = array_diff1([1, 2], [1])
ap answer
# [2]

answer = array_diff1([1, 2, 2], [1])
ap answer
# [2, 2]

answer = array_diff1([1, 2, 2], [2])
ap answer
# [1]

answer = array_diff1([1, 2, 2], [])
ap answer
# [1, 2, 2]

answer = array_diff1([], [1, 2])
ap answer
# []
