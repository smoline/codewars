# https://www.codewars.com/kata/i-love-you-a-little-a-lot-passionately-dot-dot-dot-not-at-all/train/ruby

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
