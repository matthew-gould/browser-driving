require '/c/Users/mgould/Documents/GitHub/browser-driving/calculator.rb'

When /^I am adding two integers$/ do
  sum = Calculator.add(x,y)
  assert sum == Integer
end