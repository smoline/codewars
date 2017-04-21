# https://www.codewars.com/kata/fake-binary/train/ruby

def fake_bin(s)
  arr1 = s.chars.map { |char| char < '5' ? '0' : '1' }.join
end
