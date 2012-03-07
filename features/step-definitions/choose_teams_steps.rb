Given 'the following available players' do |players|
  players.hashes.each do |player|
    player_content = "#{player['name']},#{player['skill']}\n"
    @player_data = write_file('player_data.txt', player_content)
  end
end

When /^I pick the teams$/ do
  run_simple(unescape('football-manager -f player_data.txt'))
end

Then /^each team should have (\d+) players? and (\d+) points?$/ do |number_of_players, points|
  check_both_teams_are_fair(number_of_players, points)
end

Then /^one team should have (\d+) players? and the other team should have (\d+) players?$/ do |number_of_players_team_a, number_of_players_team_b|
  check_each_team_has_the_following_sizes(number_of_players_team_a, number_of_players_team_b)
end