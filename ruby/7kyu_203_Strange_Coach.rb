# https://www.codewars.com/kata/simple-fun-number-203-strange-coach

require 'ap'

def strange_coach(players)
  first_initials = players.map { |player| player [0] }.uniq
  answer = first_initials.select { |first_initial|  players.count { |player| player.start_with?(first_initial) } >= 5 }
  if answer.empty?
    return "forfeit"
  else
    return answer.sort.join
  end
end

answer = strange_coach(["michael", "jordan", "lebron", "james", "kobe", "bryant"])
ap answer
# "forfeit"

answer = strange_coach([
 "babic",
 "keksic",
 "boric",
 "bukic",
 "sarmic",
 "balic",
 "kruzic",
 "hrenovkic",
 "beslic",
 "boksic",
 "krafnic",
 "pecivic",
 "klavirkovic",
 "kukumaric",
 "sunkic",
 "kolacic",
 "kovacic",
 "prijestolonasljednikovic"])
 ap answer
 # "bk"
