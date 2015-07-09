Feature: Division
  
  Scenario: Division is dependent on operation order
    When I divide 2 into 4
    Then I receive 2

    When I divide 4 into 2
    Then I receive 0.5

  Scenario: Division is dependent on grouping
    When I divide 4 and 2 into 2
    Then I receive 0.25

    When I divide 2 and 2 into 4
    Then I receive 1

  Scenario: Dividing by 1
    When I divide 1 into 2
    Then I receive 2

  Scenario: Dividing zero
    When I divide 2 into 0
    Then I receive 0

  Scenario: Dividing by 0
    When I divide 0 into 2
    Then I see an error
