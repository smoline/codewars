# https://www.codewars.com/kata/how-many-lightsabers-do-you-own/train/ruby

def howManyLightsabersDoYouOwn(name = '')
  if name == "Zach"
    return 18
  end
  return 0
end

describe "Solution" do
  it "should test for how_many_lightsabers" do
    Test.assert_equals(howManyLightsabersDoYouOwn("Zach"), 18)
    Test.assert_equals(howManyLightsabersDoYouOwn("Alex"), 0)
    Test.assert_equals(howManyLightsabersDoYouOwn("Mary"), 0)
    Test.assert_not_equals(howManyLightsabersDoYouOwn("Todd"), 5)
  end
end
