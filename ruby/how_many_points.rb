# https://www.codewars.com/kata/how-many-points-did-the-teams-from-los-angeles-score/train/ruby

require 'ap'

def get_los_angeles_points(results)
  total_score = 0
  results.each do |result, score|
    if result.match?(/Los/ Angeles/)
      total_score += score.to_1
    end
  end
  return total_score
end

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
