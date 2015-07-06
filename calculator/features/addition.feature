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