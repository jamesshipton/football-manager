Feature: Pick balanced teams
  So that we have a close game at mnf
  As a team manager
  I want to pick balanced teams from the list of available players

  Scenario: 2 players are available
    Given the following players
      | name      | skill |
      | player 1  | 5     |
      | player 2  | 5     |
    When I pick the teams
    Then each team should have 1 player and 5 points

  Scenario: 5 players are available
  Given the following players
    | name      | skill |
    | player 1  | 7     |
    | player 2  | 7     |
    | player 3  | 1     |
    | player 4  | 1     |
    | player 5  | 3     |
    | #player 6 | 3     |

  When I pick the teams
  Then one team should have 3 players and 9 points
    And one team should have 2 players and 10 points
