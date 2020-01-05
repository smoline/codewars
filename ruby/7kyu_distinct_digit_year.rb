# https://www.codewars.com/kata/simple-fun-number-144-distinct-digit-year/train/ruby

require 'awesome_print'

def distinct_digit_year(year)
  num = year + 1
  until num.to_s.chars.uniq.count == 4
    num += 1
  end
  return num
end

answer = distinct_digit_year(1987)
ap answer
# 2013

answer = distinct_digit_year(2013)
ap answer
# 2014

answer = distinct_digit_year(2229)
ap answer
# 2301

def distinct_digit_year1(year)
  (year + 1..9999).find { |year_num| year_num.to_s.chars.uniq.count == 4 }
end

answer = distinct_digit_year1(1987)
ap answer
# 2013

answer = distinct_digit_year1(2013)
ap answer
# 2014

answer = distinct_digit_year1(2229)
ap answer
# 2301

def distinct_digit_year2(year)
  (year + 1..9999).find do |year_num|
    year_string = year_num.to_s.chars

    year_string.all? { |char| year_string.count(char) == 1 }
  end
end

answer = distinct_digit_year2(1987)
ap answer
# 2013

answer = distinct_digit_year2(2013)
ap answer
# 2014

answer = distinct_digit_year2(2229)
ap answer
# 2301
