require 'awesome_print'

def find_missing_letter(arr)
  (arr.length - 1).times {|num| return (arr[num].ord + 1).chr if arr[num].ord + 1 != arr[num + 1].ord}
  return nil
end

answer = find_missing_letter(%w[a b c d f])
ap answer
# "e"

answer = find_missing_letter(%w[O Q R S])
ap answer
# "P"

answer = find_missing_letter(%w[b d])
ap answer
# "c"

answer = find_missing_letter(%w[a b d])
ap answer
# "c"

answer = find_missing_letter(%w[b d e])
ap answer
# "c"

# another way
def find_missing_letter1(arr)
  arr[0..-1].each_with_index { |v, i| return v.next if v.next != arr[i + 1] }
  return nil
end

answer = find_missing_letter1(%w[a b c d f])
ap answer
# "e"

answer = find_missing_letter1(%w[O Q R S])
ap answer
# "P"

answer = find_missing_letter1(%w[b d])
ap answer
# "c"

answer = find_missing_letter1(%w[a b d])
ap answer
# "c"

answer = find_missing_letter1(%w[b d e])
ap answer
# "c"
