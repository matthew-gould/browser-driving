When /^I (add|subtract|multiply|divide) (\d+) (?:and|from|by|into) (\d+)$/ do |mthd, n1, n2|
  @result = begin
              Calculator.send(mthd, n2, n1)
            rescue ZeroDivisionError => error
              error
            end
end

When /^I (add|subtract|multiply|divide) (\d+) and (\d+) (?:to|from|by|into) (\d+)$/ do |mthd, n1, n2, n3|
  @result = Calculator.send(mthd, n3, n1, n2)
end

Then /^an integer is returned$/ do
  expect(@result).to be_a Fixnum
end

Then /^I receive (.*)$/ do |result|
  expect(@result).to eq result.to_i
end

Then /^I see an error$/ do
  expect(@result).to be_a ZeroDivisionError
end
