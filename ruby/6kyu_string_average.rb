# https://www.codewars.com/kata/string-average/train/ruby

require 'awesome_print'

# class Array; def sum; self.inject(0, :+); end; end
def average_string(s)
  if s == ""
    return "n/a"
  end
  array = s.split(" ")
  new_array = array.map do |str|
    case str
    when "zero"
      0
    when "one"
      1
    when "two"
      2
    when "three"
      3
    when "four"
      4
    when "five"
      5
    when "six"
      6
    when "seven"
      7
    when "eight"
      8
    when "nine"
      9
    else
      "n/a"
    end
  end
  return "n/a" if new_array.include?("n/a")
  return "zero" if new_array.sum == 0
  average = new_array.sum / new_array.count
  case average
    when 0
      return "zero"
    when 1
      return "one"
    when 2
      return "two"
    when 3
      return "three"
    when 4
      return "four"
    when 5
      return "five"
    when 6
      return "six"
    when 7
      return "seven"
    when 8
      return "eight"
    when 9
      return "nine"
  end
end

answer = average_string("zero nine five two")
ap answer
# "four"

answer = average_string("four six two three")
ap answer
# "three"

answer = average_string("one two three four five")
ap answer
# "three"

answer = average_string("five four")
ap answer
# "four"

answer = average_string("zero zero zero zero zero")
ap answer
# "zero"

answer = average_string("one one eight one")
ap answer
# "two"

answer = average_string("one")
ap answer
# "one"

answer = average_string("")
ap answer
# "n/a"

answer = average_string("ten")
ap answer
# "n/a"

answer = average_string("pippi")
ap answer
# "n/a"

answer = average_string("asz one one two nine eight")
ap answer
# "n/a"

# Another Way
def str_num(el)
  hsh = { 'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9 }
  return hsh[el] unless (el.is_a?(Integer))
  hsh.select!{|k,v| v == el}
  return hsh.keys.first
end

def average_string1(s)
  nums_arr = s.split.map{|str| str_num(str)}

  return "n/a" if nums_arr.include?(nil) || s == ""
  avg = nums_arr.reduce(:+) / nums_arr.length
  str_num(avg)
end

answer = average_string1("zero nine five two")
ap answer
# "four"

answer = average_string1("four six two three")
ap answer
# "three"

answer = average_string1("one two three four five")
ap answer
# "three"

answer = average_string1("five four")
ap answer
# "four"

answer = average_string1("zero zero zero zero zero")
ap answer
# "zero"

answer = average_string1("one one eight one")
ap answer
# "two"

answer = average_string1("one")
ap answer
# "one"

answer = average_string1("")
ap answer
# "n/a"

answer = average_string1("ten")
ap answer
# "n/a"

answer = average_string1("pippi")
ap answer
# "n/a"

answer = average_string1("asz one one two nine eight")
ap answer
# "n/a"
