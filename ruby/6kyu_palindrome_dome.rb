# https://www.codewars.com/kata/palindrome-for-your-dome/train/ruby

require 'awesome_print'

def palindrome(string)
  string = string.gsub(/\W/,"").downcase
  string_split = string.split("")
  string_reverse = []
  string.size.times { string_reverse << string_split.pop }
  string == string_reverse.join()
end

answer = palindrome("Amore, Roma")
ap answer
# true

answer = palindrome("A man, a plan, a canal: Panama")
ap answer
# true

answer = palindrome("NO 'x' in 'Nixon'")
ap answer
# true

answer = palindrome("Abba Zabba, you're my only friend")
ap answer
# false

# another way
def palindrome1(string)
  stringForward = string.gsub(/\W/,"").downcase
  stringReverse = ""
  (stringForward.length - 1).downto(0) {|x| stringReverse += stringForward[x]}
  stringForward == stringReverse
end

answer = palindrome1("Amore, Roma")
ap answer
# true

answer = palindrome1("A man, a plan, a canal: Panama")
ap answer
# true

answer = palindrome1("NO 'x' in 'Nixon'")
ap answer
# true

answer = palindrome1("Abba Zabba, you're my only friend")
ap answer
# false
