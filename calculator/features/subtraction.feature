Feature: Subtraction

  Scenario: Closure principle
    When I subtract 1 from 2
    Then an integer is returned
    
  Scenario: Subtracting zero from an integer
    When I subtract 0 from 1
    Then I receive 1

  Scenario: Subtraction is dependent on operation order
    When I subtract 1 from 2
    Then I receive 1

    When I subtract 2 from 1
    Then I receive -1

  Scenario: Subtraction is dependent on grouping
    When I subtract 2 and 1 from 3
    Then I receive 0

    When I subtract 3 and 2 from 1
    Then I receive -4

  Scenario: Subtracting self returns zero
    When I subtract 3 from 3
    Then I receive 0

