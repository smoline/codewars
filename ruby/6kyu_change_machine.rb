# https://www.codewars.com/kata/change-machine/train/ruby

require 'ap'

def change(cents)
  return { 25 => 0, 10 => 0, 5 => 0, 1 => 0 } if cents < 0
  change = {}
  change[25] = (cents/25)
  cents = cents % 25
  change[10] = (cents/10)
  cents = cents % 10
  change[5] = (cents/5)
  cents = cents % 5
  change[1] = (cents/1)
  cents = cents % 1
  change
end

answer = change(31)
ap answer
# => { 25 => 1, 10 => 0, 5 => 1, 1 => 1 }

answer = change(51)
ap answer
# => { 25 => 2, 10 => 0, 5 => 0, 1 => 1 }

# Another Way
def change(cents)
  [25, 10, 5, 1].map.with_object({}) { |c, h|
    h[c] = cents > 0 ? cents / c : 0
    cents -= h[c] * c
  }
end

answer = change(31)
ap answer
# => { 25 => 1, 10 => 0, 5 => 1, 1 => 1 }

answer = change(51)
ap answer
# => { 25 => 2, 10 => 0, 5 => 0, 1 => 1 }

# Another Solution
def change(cents)
  change = { 25 => 0, 10 => 0, 5 => 0, 1 => 0 }
  cents <= 0 ? change : change.each_key { |c| change[c] = cents / c; cents = cents % c }
end

answer = change(31)
ap answer
# => { 25 => 1, 10 => 0, 5 => 1, 1 => 1 }

answer = change(51)
ap answer
# => { 25 => 2, 10 => 0, 5 => 0, 1 => 1 }
