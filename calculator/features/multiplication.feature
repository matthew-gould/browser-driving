Feature: Multiplication

  Scenario: Closure principle
    When I multiply 2 by 2
    Then an integer is returned

  Scenario: Multiplication is not dependent on operation order
    When I multiply 3 by 2
    Then I receive 6

    When I multiply 2 by 3
    Then I receive 6

  Scenario: Multiplication is not dependent on grouping
    When I multiply 2 and 3 by 4
    Then I receive 24

    When I multiply 3 and 4 by 2
    Then I receive 24

  Scenario: Multiplying by one
    When I multiply 5 by 1
    Then I receive 5

  Scenario: Multiplying by zero
    When I multiply 5 by 0
    Then I receive 0
