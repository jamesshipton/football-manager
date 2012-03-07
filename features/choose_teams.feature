Feature: Pick balanced teams
  So that we have a close game at mnf
  As a team manager
  I want to pick balanced teams from the list of available players

  Scenario: 2 players are available
    Given the following available players
      | name      | skill |
      | player 1  | 5     |
      | player 2  | 5     |
    When I pick the teams
    Then each team should have 1 player and 5 points

  Scenario: 5 players are available
    Given 5 available players
    When I pick the teams
    Then one team should have 3 players and the other team should have 2 players

