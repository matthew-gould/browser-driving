Feature: Subtraction

  Scenario: Subtracting two integers returns an integer
    When 3 minus 1
    Then I should absolutely get back 2

  Scenario: Subtracting zero from an integer yields the integer
    When doing 1 minus 0
    Then I should definitely get back 1

  Scenario: The order of two integers matters
    When I am doing 3 minus 7
    Then the first result is -4 and the second is 4

  Scenario: The order of three or more integers matters
    When I am subtracting 1, 2 and 3
    Then the order of the integers should change the result

  Scenario: Subtracting an integer from itself yields zero
    When I subtract 3 from itself
    Then the result of this equation should be 0