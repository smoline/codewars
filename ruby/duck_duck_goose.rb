# https://www.codewars.com/kata/duck-duck-goose/train/ruby

def duck_duck_goose(players, goose)
  goose2 = goose
  while players.count < goose2
    goose2 -= players.count
  end
  players.each_with_index do |player, index|
    if (index + 1) == goose2
      return player.name
    end
  end
end
