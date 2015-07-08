Feature: Division

  Scenario: The result of dividing two numbers depends on their order
    When I am dividing 6 by a certain 3
    Then the order of operations will change the result

  Scenario: The result of dividing multiple numbers depends on their order
    When I am dividing 12 by 3 by 2
    Then the order of operations will change the result

  Scenario: Dividing an integer by one yields the integer
    When I divide 3 by the number 1
    Then the result should be 3

  Scenario: Zero divided by an integer returns zero
    When I divide 0 by 5
    Then the result should be 0

  Scenario: An integer divided by zero raises an error
    When I divide all of 5 by 0
    Then it should raise an error