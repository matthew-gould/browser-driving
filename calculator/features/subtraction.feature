Feature: Subtraction

  Scenario: subtracting two integers returns an integer
    When I subtract 1 integer from another
    Then I should get back an integer

  Scenario: subtracting zero from an integer yields the integer
    When I subtract zero from an integer
    Then I should get back the original integer

  Scenario: the order of two integers matters
    When I am subtracting two integers
    Then the order of the integers should change the result

  Scenario: the order of three or mroe integers matters
    When I am subtracting three or more integers
    Then the order of the integers should change the result

  Scenario: subtracting an integer from itself yields zero
    When I subtract an integer from itself
    Then the result should be zero