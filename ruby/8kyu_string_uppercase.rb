# https://www.codewars.com/kata/is-the-string-uppercase

class String
  def is_upcase?
    chars.all? { |char| char.upcase == char }
  end
end
