# https://www.codewars.com/kata/regex-password-validation/train/ruby

require 'awesome_print'

def validate_password(password)
  /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,}$/ === password ||
  /(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])^[a-zA-Z0-9]{6,}$/ === password
end

answer = validate_password('ghdfj32')
ap answer
# false

answer = validate_password('DSJKHD23')
ap answer
# false

answer = validate_password('4fdg5Fj3')
ap answer
# true

answer = validate_password('fjd3IR9.;')
ap answer
# false

answer = validate_password('a2.d412')
ap answer
# false

answer = validate_password('123abcABC')
ap answer
# true
