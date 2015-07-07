class Calculator

  def add(numbers*)
    numbers.inject { |sum, x| sum += x }
  end

  def subtract(numbers*)
    numbers.inject { |dif, x| dif -= x }
  end

  def multiply(numbers*)
  end

  def divide(numbers*)
  end

end