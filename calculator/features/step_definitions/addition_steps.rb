When /^I am adding (\d+) and (\d+)$/ do |num1, num2|
  @sum = Calculator.add(num1.to_i, num2.to_i)
end

Then /^I should get back a (\d+)$/ do |num3|
  expect(@sum).to eq num3.to_i
end

When /^I am adding zero (\d+) and (\d+)$/ do |num1, num2|
  @sum = Calculator.add(num1.to_i, num2.to_i)
end
    
Then /^I should get back (\d+)$/ do |num3|
  expect(@sum).to eq num3.to_i
end

When /^I add (\d+) and (\d+)$/ do |num1, num2|
  @sum = Calculator.add(num1.to_i, num2.to_i)
  @sum2 = Calculator.add(num2.to_i, num1.to_i)
end

Then /^I should get back (\d+) regardless of how they are ordered$/ do |num3|
  expect(@sum).to eq num3.to_i
  expect(@sum2).to eq num3.to_i
end

When /^I add (\d+), (\d+) and (\d+) together$/ do |num1, num2, num3|
  @sum = Calculator.add(num1.to_i, num2.to_i, num3.to_i)
  @sum2 = Calculator.add(num2.to_i, num3.to_i, num1.to_i)
  @sum3 = Calculator.add(num3.to_i, num1.to_i, num2.to_i)
end

Then /^I should get (\d+) regardless of how they are ordered$/ do |num4|
  expect(@sum).to eq num4.to_i
  expect(@sum2).to eq num4.to_i
  expect(@sum3).to eq num4.to_i
end