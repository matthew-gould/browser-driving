Feature: Multiplication

  Scenario: Multiplying integers together yields an integer
    When I multiply two integers together
    Then I should get back an integer

  Scenario: Multiplying 2 integers yields the same result no matter what the order
    When I multiply two integers
    Then I will get back the same result no matter the order

  Scenario: Multiplying integers yeilds the same result no matter what the order
    When I multuply three or more integers together
    Then I will get back the same result no matter the order

  Scenario: Multiplying an integer by 1 yields itself
    When I multuply an integer by 1
    Then I will get back that integer