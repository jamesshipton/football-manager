Given 'the following players' do |players|
  player_content = players.hashes.inject('') do |total_content, player|
    total_content << "#{player['name']},#{player['skill']}\n"
  end
  @player_data = write_file('player_data.txt', player_content)
end

When /^I pick the teams$/ do
  run_simple(unescape('football-manager -f player_data.txt'))
end

Then /^each team should have (\d+) players? and (\d+) points?$/ do |number_of_players, points|
  check_both_teams_are_equal(number_of_players, points)
end

Then /^one team should have (\d+) players? and (\d+) points?$/ do |number_of_players, points|
  check_team_has_the_following(number_of_players, points)
end
