# https://www.codewars.com/kata/counting-sheep-dot-dot-dot/train/ruby

def countSheeps array
  count = 0
  array.each do |value|
    if value == true
      count += 1
    end
  end
  return count
end
