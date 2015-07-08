Feature: Multiplication

  Scenario: Multiplying integers together yields an integer
    When I multiply 2 and 3
    Then the multiplication should yield 6

  Scenario: Multiplying 2 integers yields the same result no matter what the order
    When I multiply two numbers 4 and 3
    Then I will get back 12 no matter the order

  Scenario: Multiplying integers yeilds the same result no matter what the order
    When I multuply 2, 3 and 4
    Then I will get back 24 no matter what order I multiply them

  Scenario: Multiplying an integer by 1 yields itself
    When I multuply 5 by 1
    Then I will get back that 5