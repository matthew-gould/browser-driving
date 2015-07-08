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

