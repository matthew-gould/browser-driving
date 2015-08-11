class Calculator
  class << self
    
    def add *n
      n.map(&:to_i).inject(:+)
    end

    def subtract *n
      n.map(&:to_i).inject(:-)
    end

    def multiply *n
      n.map(&:to_i).reduce(:*)
    end

    def divide *n
      n.map(&:to_i).reduce(:/)
    end
    
  end
end
