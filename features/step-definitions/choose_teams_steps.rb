Given 'the following available players' do |players|
  player_content = players.hashes.inject('') do |total_content, player|
    total_content << "#{player['name']},#{player['skill']}\n"
  end
  @player_data = write_file('player_data.txt', player_content)
end

When /^I pick the teams$/ do
  run_simple(unescape('football-manager -f player_data.txt'))
end

Then /^(?:one|each) team should have (\d+) players? and (\d+) points?$/ do |number_of_players, points|
  check_both_teams_are_fair(number_of_players, points)
end
