# https://www.codewars.com/kata/regexp-basics-is-it-a-eight-bit-unsigned-number/train/ruby

require 'ap'

class String
  def eight_bit_number?
    self.match(/^([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$/) ? true : false
  end
end

answer = "".eight_bit_number?
ap answer
# false

answer = "0".eight_bit_number?
ap answer
# true

answer = "00".eight_bit_number?
ap answer
# false

answer = "55".eight_bit_number?
ap answer
# true

answer = "042".eight_bit_number?
ap answer
# false

answer = "123".eight_bit_number?
ap answer
# true

answer = "255".eight_bit_number?
ap answer
# true

answer = "256".eight_bit_number?
ap answer
# false

answer = "999".eight_bit_number?
ap answer
# false

answer = "2 55".eight_bit_number?
ap answer
# false

answer = "-255".eight_bit_number?
ap answer
# false

answer = "+255".eight_bit_number?
ap answer
# false

# Another Way
class String
  def eight_bit_number?
    /\A(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\z/ === self
  end
end

answer = "".eight_bit_number?
ap answer
# false

answer = "0".eight_bit_number?
ap answer
# true

answer = "00".eight_bit_number?
ap answer
# false

answer = "55".eight_bit_number?
ap answer
# true

answer = "042".eight_bit_number?
ap answer
# false

answer = "123".eight_bit_number?
ap answer
# true

answer = "255".eight_bit_number?
ap answer
# true

answer = "256".eight_bit_number?
ap answer
# false

answer = "999".eight_bit_number?
ap answer
# false

answer = "2 55".eight_bit_number?
ap answer
# false

answer = "-255".eight_bit_number?
ap answer
# false

answer = "+255".eight_bit_number?
ap answer
# false
