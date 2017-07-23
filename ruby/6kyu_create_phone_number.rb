# https://www.codewars.com/kata/create-phone-number/train/ruby

require 'ap'

def createPhoneNumber(numbers)
  return numbers.join.gsub!(/^(\d{3})(\d{3})(\d{4})$/, '(\1) \2-\3')
end

answer = createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
ap answer
# => returns "(123) 456-7890"

answer = createPhoneNumber([7, 8, 3, 5, 6, 1, 2, 4, 6, 2])
ap answer
# => returns "(783) 561-2462"

# Another Way
def createPhoneNumber(numbers)
  return "(#{numbers[0]}#{numbers[1]}#{numbers[2]}) #{numbers[3]}#{numbers[4]}#{numbers[5]}-#{numbers[6]}#{numbers[7]}#{numbers[8]}#{numbers[9]}"
end

answer = createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
ap answer
# => returns "(123) 456-7890"

answer = createPhoneNumber([7, 8, 3, 5, 6, 1, 2, 4, 6, 2])
ap answer
# => returns "(783) 561-2462"

# And Another Way
def createPhoneNumber(numbers)
  '(%d%d%d) %d%d%d-%d%d%d%d' % numbers
end

answer = createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
ap answer
# => returns "(123) 456-7890"

answer = createPhoneNumber([7, 8, 3, 5, 6, 1, 2, 4, 6, 2])
ap answer
# => returns "(783) 561-2462"
