# https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/train/ruby

require 'awesome_print'

def duplicate_count(text)
  arr = text.downcase.split("")
  arr.uniq.count { |n| arr.count(n) > 1 }
end

answer = duplicate_count("")
ap answer
# 0

answer = duplicate_count("abcde")
ap answer
# 0

answer = duplicate_count("abcdeaa")
ap answer
# 1

answer = duplicate_count("abcdeaB")
ap answer
# 2

answer = duplicate_count("Indivisibilities")
ap answer
# 2

# another way
def duplicate_count1(text)
  num = 0
  new_text = text.split("").uniq
  new_text.each {|x| num += 1 if text.downcase.count(x) > 1}
  num
end

answer = duplicate_count1("")
ap answer
# 0

answer = duplicate_count1("abcde")
ap answer
# 0

answer = duplicate_count1("abcdeaa")
ap answer
# 1

answer = duplicate_count1("abcdeaB")
ap answer
# 2

answer = duplicate_count1("Indivisibilities")
ap answer
# 2

# another way
def duplicate_count2(text)
  ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end

answer = duplicate_count2("")
ap answer
# 0

answer = duplicate_count2("abcde")
ap answer
# 0

answer = duplicate_count2("abcdeaa")
ap answer
# 1

answer = duplicate_count2("abcdeaB")
ap answer
# 2

answer = duplicate_count2("Indivisibilities")
ap answer
# 2
