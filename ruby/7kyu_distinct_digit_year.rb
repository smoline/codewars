# https://www.codewars.com/kata/simple-fun-number-144-distinct-digit-year/train/ruby

require 'ap'

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

def distinct_digit_year(year)
  (year+1..9999).find { |year_num| year_num.to_s.chars.uniq.count == 4 }
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

def distinct_digit_year(year)
(year+1..9999).find { |year_num|
  year_string = year_num.to_s.chars

  year_string.all? { |char| year_string.count(char) == 1 }
}
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
