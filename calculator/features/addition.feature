Feature: Addition

  Scenario: Closure principle
    When I add 1 and 1
    Then an integer is returned

  Scenario: Adding zero to an integer
    When I add 1 and 0
    Then I receive 1

  Scenario: Addition is not dependent on operation order
    When I add 1 and 2
    Then I receive 3

    When I add 2 and 1
    Then I receive 3

  Scenario: Addition is not dependent on grouping
    When I add 2 and 4 to 3
    Then I receive 9

    When I add 4 and 3 to 2
    Then I receive 9
