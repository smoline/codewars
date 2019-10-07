# https://www.codewars.com/kata/valid-phone-number/train/ruby

require 'awesome_print'

def validPhoneNumber(phoneNumber)
  if phoneNumber.match (/[a-z]/)
    return false
  elsif phoneNumber.match /\(\d{3}\) \d{3}-\d{4}/
    return true
  else
    return false
  end
end

answer = validPhoneNumber("(123) 456-7890")
ap answer
# true

answer = validPhoneNumber("(1234) 123-8765")
ap answer
# false

answer = validPhoneNumber("(abc) 123-8765")
ap answer
# false

answer = validPhoneNumber("(098) 123 8765")
ap answer
# false

answer = validPhoneNumber("(098) 123-8765 a")
ap answer
# false

# Another Way
def validPhoneNumber(phoneNumber)
  !!phoneNumber[/\A\(\d{3}\)\s\d{3}-\d{4}\z/]
end

answer = validPhoneNumber("(123) 456-7890")
ap answer
# true

answer = validPhoneNumber("(1234) 123-8765")
ap answer
# false

answer = validPhoneNumber("(abc) 123-8765")
ap answer
# false

answer = validPhoneNumber("(098) 123 8765")
ap answer
# false

answer = validPhoneNumber("(098) 123-8765 a")
ap answer
# false
