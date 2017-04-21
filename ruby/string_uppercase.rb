# https://www.codewars.com/kata/is-the-string-uppercase/train/ruby

class String
  def is_upcase?
    chars.all? { |char| char.upcase == char }
  end
end
