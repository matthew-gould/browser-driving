Feature: Division

  Scenario: The result of dividing two numbers depends on their order
    When I am dividing two numbers
    Then the order of operations will change the result

  Scenario: The result of dividing multiple numbers depends on their order
    When I am dividing three or more numbers
    Then the order of operations will change the result

  Scenario: Dividing an integer by one yields the integer
    When I divide an integer by one
    Then the result should be the integer

  Scenario: Zero divided by an integer returns zero
    When I divide zero by an integer
    Then the result should be zero

  Scenario: An integer divided by zero raises an error
    When I divide an integer by zero
    Then it should raise an error