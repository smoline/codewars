# https://www.codewars.com/kata/dont-give-me-five/train/ruby

def dont_give_me_five(start_number,end_number)
  (start_number..end_number).reject { |number| number.to_s.include?("5") }.count
end
