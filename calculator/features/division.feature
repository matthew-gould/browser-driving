Feature: Division

  Scenario: the result of dividing numbers depends on their order
    Given I have 2 or more integers
    And I am dividing them
    Then the order of operations will change the result