# https://www.codewars.com/kata/multiply/train/ruby

def multiply(a, b)
  a * b
end

describe "multiply" do
  it "should test multiply" do
    Test.assert_equals(multiply(8,2), 16, "This test should multipy the 2 given numbers together")
    Test.assert_equals(multiply(7,6), 42, "This test should multipy the 2 given numbers together")
    Test.assert_equals(multiply(5,6), 30, "This test should multipy the 2 given numbers together")
  end
end
