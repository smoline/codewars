# https://www.codewars.com/kata/i-love-you-a-little-a-lot-passionately-dot-dot-dot-not-at-all/train/ruby

# Who remembers back to their time in the schoolyard, when girls would take a flower and tear its petals, saying
# each of the following phrases each time a petal was torn:

# I love you
# a little
# a lot
# passionately
# madly
# not at all

# When the last petal was torn there were cries of excitement, dreams, surging thoughts and emotions.

# Your goal in this kata is to determine which phrase the girls would say for a flower of a given number of petals, where nb_petals > 0.

require 'awesome_print'

def how_much_i_love_you(nb_petals)
  total = nb_petals % 6
  if total == 1
    return "I love you"
  elsif total == 2
    return "a little"
  elsif total == 3
    return "a lot"
  elsif total == 4
    return "passionately"
  elsif total == 5
    return "madly"
  elsif total == 0
    return "not at all"
  end
end

answer = how_much_i_love_you(36)
ap answer
# "not at all"

answer = how_much_i_love_you(7)
ap answer
# "I love you"

answer = how_much_i_love_you(3)
ap answer
# "a lot"