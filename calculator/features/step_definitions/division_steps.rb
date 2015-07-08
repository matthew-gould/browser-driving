When /^I am dividing (\d+) by a certain (\d+)$/ do |num1, num2|
  num1 = num1.to_i
  num2 = num2.to_i

  @res = Calculator.divide(num1, num2)
  @res2 = Calculator.divide(num2, num1)
end

Then /^the order of operations will change the result$/ do
  expect(@res).not_to eq @res2
end

When /^I am dividing (\d+) by (\d+) by (\d+)$/ do |num1, num2, num3|
  num1 = num1.to_i
  num2 = num2.to_i
  num3 = num3.to_i

  @res = Calculator.divide(num1, num2, num3)
  @res2 = Calculator.divide(num2, num3, num1)
  @res3 = Calculator.divide(num3, num1, num2)
end

Then /^the order of operations will change the final result$/ do
  expect(@res).not_to eq @res2
  expect(@res).not_to eq @res3
  expect(@res3).not_to eq @res2
end

When /^I divide (\d+) by the number (\d+)$/ do |num1, num2|
  @res = Calculator.divide(num1.to_i, num2.to_i)
end

Then /^the result should be (\d+)$/ do |num1|
  expect(@res).to eq num1.to_i
end

When /^I divide (\d+) by (\d+)$/ do |num1, num2|
  @res = Calculator.divide(num1.to_i, num2.to_i)
end

Then /^the result should probably be (\d+)$/ do |num1|
  expect(@res).to eq num1.to_i
end

When /^I divide all of (\d+) by (\d+)$/ do |num1, num2|
  @num1 = num1.to_i
  @num2 = num2.to_i
end

Then /^it should raise an error$/ do
  expect{Calculator.divide(@num1, @num2)}.to raise_error(ZeroDivisionError)
end