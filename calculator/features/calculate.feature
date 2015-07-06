Feature: adding-two-integers

  Scenario: adding-two-integers for cucumber
    Given I am adding two integers
    And They are both greater than 1
    Then I should get back an integer

Feature: adding-zero

  Scenario: adding zero gives back original integer
    Given I have an integer
    And I am adding zero
    Then I should get back the original integer

Feature: sum-order

  Scenario: the order of integers being added doesn't matter
    Given I have 2 or more integers
    And I add them together
    Then I should get the same integer regardless of how they are added

Feature: subtraction

  Scenario: subtracting an integer from an integer yields an integer
    Given I have 2 integers
    And I subtract 1 integer from the other
    Then I should get back an integer

Feature: subtracting-zero

  Scenario: subtracting zero from an integer yields the integer
    Given I have an integer
    And I am subtractin zero from the integer
    Then I should get back the original integer

