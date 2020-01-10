# https://www.codewars.com/kata/57e76bc428d6fbc2d500036d/train/ruby

require 'awesome_print'

def string_to_array(string)
  string.split(" ")
end

ap string_to_array("Robin Singh")
# ["Robin", "Singh"]

ap string_to_array("CodeWars")
# ["CodeWars"]

ap string_to_array("I love arrays they are my favorite")
# ["I", "love", "arrays", "they", "are", "my", "favorite"]

ap string_to_array("1 2 3")
# ["1", "2", "3"]

ap string_to_array("")
# []

