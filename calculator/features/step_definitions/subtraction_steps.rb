When /^(\d+) minus (\d+)$/ do |num1, num2|
  @dif = Calculator.subtract(num1.to_i, num2.to_i)
end

Then /^I should absolutely get back (\d+)$/ do |num3|
  expect(@dif == num3.to_i)
end

When /^doing (\d+) minus (\d+)$/ do |num1, num2|
  @dif = Calculator.subtract(num1.to_i, num2.to_i)
end

Then /^I should definitely get back (\d+)$/ do |num3|
  expect(@dif).to eq num3.to_i
end

When /^I am doing (\d+) minus (\d+)$/ do |num1, num2|
  num1 = num1.to_i
  num2 = num2.to_i

  @dif = Calculator.subtract(num1, num2)
  @dif2 = Calculator.subtract(num2, num1)
end

Then /(-\d+) and the second is (\d+)$/ do |num3,num4|
  expect(@dif).to eq num3.to_i
  expect(@dif2).to eq num4.to_i
end

When /^I am subtracting (\d+), (\d+) and (\d+)$/ do |num1, num2, num3|
  num1 = num1.to_i
  num2 = num2.to_i
  num3 = num3.to_i

  @dif = Calculator.subtract(num1, num2, num3)
  @dif2 = Calculator.subtract(num2, num3, num1)
  @dif3 = Calculator.subtract(num3, num1, num2)
end

Then /^the order of the integers should change the result$/ do
  expect(@dif).not_to eq @dif2
  expect(@dif).not_to eq @dif3
  expect(@dif2).not_to eq @dif3
end

When /^I subtract (\d+) from itself$/ do |num1|
  @dif = Calculator.subtract(num1.to_i, num1.to_i)
end

Then /^the result of this equation should be (\d+)$/ do |num2|
  expect(@dif).to eq num2.to_i
end