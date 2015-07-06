Feature: Subtraction

  Scenario: subtracting two integers returns an integer
    When I subtract 1 integer from another
    Then I should get back an integer

  Scenario: subtracting zero from an integer yields the integer
    Given I have an integer
    And I am subtractin zero from the integer
    Then I should get back the original integer

  Scenario: when subtracting the order of integers matters
    Given I have 2 or more integers
    And I am subtracting them
    Then The order or the integers should change the outcome

  Scenario: subtracting an integer from itself yields zero
    Given I have an integer
    And I subtract the same integer
    Then I should get back zero