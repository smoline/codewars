# https://www.codewars.com/kata/duck-duck-goose/train/ruby

require 'awesome_print'

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

def create_player_objects(names_array)
  player = Struct.new(:name) 
  names_array.map do |name|
    player.new(name)
  end
end

PLAYERS = create_player_objects(['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l'])

answer = duck_duck_goose(PLAYERS, 1)
ap answer
# a

answer = duck_duck_goose(PLAYERS, 10)
ap answer
# j
