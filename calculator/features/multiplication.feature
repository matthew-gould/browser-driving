Feature: Multiplication

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