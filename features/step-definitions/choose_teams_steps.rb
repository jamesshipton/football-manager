Given /^(\d+) available players?$/ do |number_of_players|
  player_content = %{ player_1
                      player_2 }
  @player_data = write_file('player_data.txt', player_content)
end

When /^I pick the teams$/ do
  run_simple(unescape('football-manager -f player_data.txt'))
end

Then /^each team should have (\d+) players?$/ do |number_of_players|
  check_both_teams_are_the_same_size(number_of_players)
end

Then /^one team should have (\d+) players? and the other team should have (\d+) players?$/ do |number_of_players_team_a, number_of_players_team_b|
  check_each_team_has_the_following_sizes(number_of_players_team_a, number_of_players_team_b)
end