When /^I multiply (\d+) and (\d+)$/ do |num1, num2|
  @res = Calculator.multiply(num1.to_i, num2.to_i)
end

Then /^the multiplication should yield (\d+)$/ do |num3|
  expect(@res).to eq num3.to_i
end

When /^I multiply two numbers (\d+) and (\d+)$/ do |num1, num2|
  @res = Calculator.multiply(num1.to_i, num2.to_i)
  @res2 = Calculator.multiply(num2.to_i, num1.to_i)
end

Then /^I will get back (\d+) no matter the order$/ do |num3|
  expect(@res).to eq num3.to_i
  expect(@res2).to eq num3.to_i
end

When /^I multuply (\d+), (\d+) and (\d+)$/ do |num1, num2, num3|
  @res = Calculator.multiply(num1.to_i, num2.to_i, num3.to_i)
  @res2 = Calculator.multiply(num2.to_i, num3.to_i, num1.to_i)
  @res3 = Calculator.multiply(num3.to_i, num1.to_i, num2.to_i)
end

Then /^I will get back (\d+) no matter what order I multiply them$/ do |num4|
  expect(@res).to eq num4.to_i
  expect(@res2).to eq num4.to_i
  expect(@res3).to eq num4.to_i
end

When /^I multuply (\d+) by (\d+)$/ do |num1, num2|
  @res = Calculator.multiply(num1.to_i, num2.to_i)
end

Then /^I will get back that (\d+)$/ do |num1|
  expect(@res).to eq num1.to_i
end