def check_both_teams_are_the_same_size(number_of_players)
  ['A', 'B'].each do |team|
    pattern = "Team #{team} has #{number_of_players} player[s]?"
    assert_matching_output(pattern, all_output)
  end
end

def check_each_team_has_the_following_sizes(number_of_players_team_a, number_of_players_team_b)
  ['A', 'B'].each do |team|
    pattern = "Team #{team} has (#{number_of_players_team_a}|#{number_of_players_team_b}) player[s]?"
    assert_matching_output(pattern, all_output)
  end
end