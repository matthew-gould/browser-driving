When /^I am adding (\d+) and (\d+)$/ do |num1, num2|
  sum = Calculator.add(num1, num2)
end

Then /^I should get back a (\d+)$/ do |num3|
  expect(sum == num3)
end

When /^I am adding zero (\d+) and (\d+)$/ do |num1, num2|
  sum = Calculator.add(num1, num2)
end
    
Then /^I should get back (\d+)$/ do |num3|
  expect(sum == num3)
end

When /^I add (\d+) and (\d+)$/ do |num1, num2|
  sum = Calculator.add(num1, num2)
  sum2 = Calculator.add(num2, num1)
end

Then /^I should get a (\d+) regardless of how they are ordered$/ do |num3|
  expect(sum == num3)
  expect(sum2 == num3)
end

When /^I add (\d+), (\d+) and (\d+) together$/ do |num1, num2, num3|
  sum = Calculator.add(num1, num2, num3)
  sum2 = Calculator.add(num2, num3, num1)
  sum3 = Calculator.add(num3, num1, num2)
end

Then /^I should get (\d+) regardless of how they are ordered$/ do |num4|
  expect(sum == num4)
  expect(sum2 == num4)
  expect(sum3 == num4)
end