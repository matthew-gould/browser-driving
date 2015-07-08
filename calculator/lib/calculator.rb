class Calculator

  def self.add(*numbers)
    numbers.inject(:+)
  end

  def self.subtract(*numbers)
    numbers.inject(:-)
  end

  def self.multiply(*numbers)
    numbers.reduce(:*)
  end

  def self.divide(*numbers)
    numbers.reduce(:/)
  end

end