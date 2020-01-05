# https://www.codewars.com/kata/is-this-my-tail/train/ruby

require 'awesome_print'

def correct_tail(body, tail)
  sub = body[-1]

  sub == tail ? true : false
end

answer = correct_tail("Fox", "x")
ap answer
# true

answer = correct_tail("Emu", "t")
ap answer
# false
