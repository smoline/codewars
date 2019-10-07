# https://www.codewars.com/kata/55e2adece53b4cdcb900006c/train/ruby

require 'awesome_print'

def race(v1, v2, g)
  if v1 >= v2
    return nil
  end
  seconds = (g * 3600 / (v2 - v1))
  [seconds / 3600, (seconds / 60) % 60, seconds % 60]
end

answer = race(720, 850, 70)
ap answer
# [0, 32, 18]

answer = race(80, 91, 37)
ap answer
# [3, 21, 49]

answer = race(80, 100, 40)
ap answer
# [2, 0, 0]

answer = race(80, 70, 40)
ap answer
# nil

answer = race(80, 80, 0)
ap answer
# nil

# Another Way
def race(v1, v2, g)
  return nil if v2 < v1
  t = (g.to_f/(v2.to_f - v1.to_f))
  s = ((t.to_f*3600))%60
  m = ((t.to_f)*60.00)%60
  h = (t.to_f)%60
  [h.floor, m.floor, s.floor]
end

answer = race(720, 850, 70)
ap answer
# [0, 32, 18]

answer = race(80, 91, 37)
ap answer
# [3, 21, 49]

answer = race(80, 100, 40)
ap answer
# [2, 0, 0]

answer = race(80, 70, 40)
ap answer
# nil

# Another Way
def race(v1, v2, g)
  sec = (g * 3600 / (v2 - v1))
  [sec / 3600,  (sec / 60) % 60, sec % 60] if v2 > v1
end

answer = race(720, 850, 70)
ap answer
# [0, 32, 18]

answer = race(80, 91, 37)
ap answer
# [3, 21, 49]

answer = race(80, 100, 40)
ap answer
# [2, 0, 0]

answer = race(80, 70, 40)
ap answer
# nil
