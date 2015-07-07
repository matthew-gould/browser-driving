class Calculator

  def add(*numbers)
    numbers.inject(:+)
  end

  def subtract(*numbers)
    numbers.inject(:-)
  end

  def multiply(*numbers)
    numbers.reduce(:*)
  end

  def divide(*numbers)
    numbers.reduce(:/)
  end

end