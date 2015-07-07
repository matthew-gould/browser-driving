Feature: Addition

  Scenario: Adding two integers returns an integer
    When I am adding 1 and 2
    Then I should get back 3

  Scenario: Adding zero gives back original integer
    When I am adding 1 and 0
    Then I should get back 1

  Scenario: The order of two integers doesnt matter
    When I add 1 and 2
    Then I should get back 3 regardless of how they are ordered

  Scenario: The order of three or more integers doesnt matter
    When I add 1, 2 and 3 together
    Then I should get 6 regardless of how they are ordered