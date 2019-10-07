# https://www.codewars.com/kata/fizz-buzz-cuckoo-clock/train/ruby

require 'awesome_print'

def fizz_buzz_cuckoo_clock(time)
  array = time.split(':')
  minutes = array[1].to_i
  hours = array[0].to_i
  if hours > 12
    hours -= 12
  elsif hours == 0
    hours = 12
  end
  if minutes % 3 == 0 && minutes % 5 != 0
    "Fizz"
  elsif minutes % 3 != 0 && minutes % 5 == 0
    "Buzz"
  elsif minutes % 3 == 0 && minutes % 5 == 0 && minutes != 0 && minutes != 30
    "Fizz Buzz"
  elsif minutes == 0
    new_string = "Cuckoo"
    while hours - 1 > 0
      new_string << " Cuckoo"
      hours -= 1
    end
    return new_string
  elsif minutes == 30
    "Cuckoo"
  else
    "tick"
  end
end

answer = fizz_buzz_cuckoo_clock("13:34")
ap answer
# "tick"

answer = fizz_buzz_cuckoo_clock("21:00")
ap answer
# "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"

answer = fizz_buzz_cuckoo_clock("11:15")
ap answer
# "Fizz Buzz"

answer = fizz_buzz_cuckoo_clock("14:30")
ap answer
# "Cuckoo"

answer = fizz_buzz_cuckoo_clock("08:55")
ap answer
# "Buzz"

answer = fizz_buzz_cuckoo_clock("03:03")
ap answer
# "Fizz"
