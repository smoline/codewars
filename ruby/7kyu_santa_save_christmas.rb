# https://www.codewars.com/kata/can-santa-save-christmas/train/ruby

require 'awesome_print'

# Can Santa save Christmas?
def determineTime(durations)
  durations.map do |duration|
    hours, minutes, seconds = duration.split(":").map(&:to_i)
    seconds + 60 * minutes + 60 * 60 * hours
  end.inject(0, "+") <= 86_400
end

durations = ["02:30:02", "05:30:02", "10:08:10", "03:10:10", "02:40:20"]
can_he = determineTime(durations)
ap can_he
# true

durations = ["06:00:00","12:00:00","06:30:00"]
can_he = determineTime(durations)
ap can_he
# false
