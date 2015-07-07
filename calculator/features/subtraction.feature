Feature: Subtraction

  Scenario: Subtracting two integers returns an integer
    When I subtract 1 integer from another
    Then I should get back an integer

  Scenario: Subtracting zero from an integer yields the integer
    When I subtract zero from an integer
    Then I should get back the original integer

  Scenario: The order of two integers matters
    When I am subtracting two integers
    Then the order of the integers should change the result

  Scenario: The order of three or more integers matters
    When I am subtracting three or more integers
    Then the order of the integers should change the result

  Scenario: Subtracting an integer from itself yields zero
    When I subtract an integer from itself
    Then the result should be zero