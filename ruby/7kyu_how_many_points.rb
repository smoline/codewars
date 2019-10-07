# https://www.codewars.com/kata/how-many-points-did-the-teams-from-los-angeles-score/train/ruby

require 'awesome_print'

def get_los_angeles_points(results)
  total_score = 0
  array = []
  place = "Los Angeles "
  results.each do |result, score|
    if result.match(/^#{place}[A-Z][a-z]+$/)
      total_score += score.to_i
    end
  end
  return total_score
end

basketball_results = [
  ["Dallas Mavericks", "492:513"],
  ["Los Angeles Lakers", "641:637"],
  ["Houston Rockets", "494:458"],
  ["Los Angeles Clippers", "382:422"],
  ["New Orleans Pelicans", "433:454"],
  ["Oklahoma City Thunder", "315:318"],
  ["Golden State Warriors", "559:503"],
  ["Memphis Grizzlies", "550:511"],
  ["Portland Trail Blazers", "527:520"],
  ["Minnesota Timberwolves", "495:494"],
  ["Utah Jazz", "399:402"],
  ["Sacramento Kings", "420:431"],
  ["San Antonio Spurs", "469:460"],
  ["Phoenix Suns", "523:522"],
  ["Denver Nuggets", "646:658"]
]
answer = get_los_angeles_points(basketball_results)
ap answer
# 1023

mexican_leaguers = [
  ["Lost Angeles", "559:503"],
  ["Los Angels", "550:511"],
  ["LosAngeles", "527:520"],
  ["Los Angeles Atomic Burritos", "494:458"],
  ["Los Angeles", "469:460"],
  ["Los Angeles ", "523:522"],
  ["Los Angeles 666", "495:494"],
  ["Angeles Los", "399:402"],
  ["Los Angeles L0s3rz", "420:431"],
  ["Original Los Angeles", "646:658"],
  ["Original Los Angeles Guys", "382:422"],
  ["Daring Dudes from Los Angeles", "492:513"],
  ["Los Guardianos Angeles", "641:637"],
  ["Los angeles", "315:318"],
  ["losAngeles", "433:454"]
  ]
  answer = get_los_angeles_points(mexican_leaguers)
  ap answer
  # 0
