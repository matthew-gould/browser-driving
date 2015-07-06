Feature: Addition

  Scenario: Adding two integers returns an integer
    When I am adding two integers
    Then I should get back an integer

  Scenario: adding zero gives back original integer
    When I am adding zero to an integer
    Then I should get back the original integer

  Scenario: the order of two integers doesnt matter
    When I add two integers togethers
    Then I should get the same result regardless of how they are ordered

  Scenario: the order of three or more integers doesnt matter
    When I add three or more integers together
    Then I should get the same result regardless of how they are ordered

  Scenario: subtracting an integer from an integer yields an integer
    Given I have 2 integers
    And I subtract 1 integer from the other
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

  Scenario: multiplying integers together yields an integer
    Given I have 2 integers
    And I multiply them together
    Then I should get back an integer

  Scenario: multiplying integers yeilds the same result no matter what the order
    Given I have 2 or more integers
    And I multuply them together
    Then I will get back the same product no matter the order of operation

  Scenario: multiplying an integer by 1 yields itself
    Given I have an integer
    And I multuply that integer by 1
    Then I will get back that integer

  Scenario: the result of dividing numbers depends on their order
    Given I have 2 or more integers
    And I am dividing them
    Then the order of operations will change the result

