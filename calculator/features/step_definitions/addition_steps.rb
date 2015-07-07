When /^I am adding (\d+) and (\d+)$/ do |arg1, arg2|
  sum = Calculator.add(arg1, arg2)
  
  expect(sum == 3)
end

When /^I am adding zero (\d+) and (\d+)$/ do |arg1, arg2|
  sum = Calculator.add(arg1, arg2)
  
  expect(sum == 1)
end

When /^I add (\d+) and (\d+)$/ do |arg1, arg2|
  sum = Calculator.add(arg1, arg2)
  sum2 = Calculator.add(arg2, arg1)
  
  expect(sum == sum2)
end

When /^I add (\d+), (\d+) and (\d+) together$/ do |arg1, arg2, arg3|
  sum = Calculator.add(arg1, arg2, arg3)
  sum2 = Calculator.add(arg2, arg3, arg1)
  sum3 = Calculator.add(arg3, arg1, arg2)

  expect(sum == 6)
  expect(sum2 == 6)
  expect(sum3 == 6)
end