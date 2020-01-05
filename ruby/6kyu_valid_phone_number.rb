# https://www.codewars.com/kata/valid-phone-number/train/ruby

require 'awesome_print'

def validPhoneNumber(phoneNumber)
  return false if phoneNumber.match (/[a-z]/)
  return true if phoneNumber.match /\(\d{3}\) \d{3}-\d{4}/
  return false
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
def validPhoneNumber1(phoneNumber)
  !!phoneNumber[/\A\(\d{3}\)\s\d{3}-\d{4}\z/]
end

answer = validPhoneNumber1("(123) 456-7890")
ap answer
# true

answer = validPhoneNumber1("(1234) 123-8765")
ap answer
# false

answer = validPhoneNumber1("(abc) 123-8765")
ap answer
# false

answer = validPhoneNumber1("(098) 123 8765")
ap answer
# false

answer = validPhoneNumber1("(098) 123-8765 a")
ap answer
# false
