# https://www.codewars.com/kata/no-oddities-here/train/ruby

require 'ap'

def no_odds(values)
  new_array = []
  values.each do |value|
    if value % 2 == 0
      new_array << value
    end
  end
  return new_array
end

describe "Solution" do
  it "should return no_odd values correctly" do
    Test.assert_equals(no_odds([11,2,8,7,4]), [2,8,4])
    Test.assert_equals(no_odds([32,27,52,68,86,12,10,9]), [32,52,68,86,12,10])
    Test.assert_equals(no_odds([749,432,6643,632,1,2,3,4,5]), [432,632,2,4])
    Test.assert_equals(no_odds([22,31,56,1,2,3,4,5,6,7]), [22,56,2,4,6])
    Test.assert_equals(no_odds([1]), [])
  end
end

answer = no_odds([11,2,8,7,4])
ap answer

answer = no_odds([32,27,52,68,86,12,10,9])
ap answer

answer = no_odds([749,432,6643,632,1,2,3,4,5])
ap answer

answer = no_odds([22,31,56,1,2,3,4,5,6,7])
ap answer

answer = no_odds([1])
ap answer
