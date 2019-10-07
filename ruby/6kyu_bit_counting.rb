require 'awesome_print'

def count_bits(n)
    n.to_s(2).chars.count("1")
end

answer = count_bits(5)
ap answer
# 2

answer = count_bits(9)
ap answer
# 2

answer = count_bits(8)
ap answer
# 1

answer = count_bits(6)
ap answer
# 2

answer = count_bits(4)
ap answer
# 1
