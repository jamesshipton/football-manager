def check_both_teams_are_fair(number_of_players, points)
  ['A', 'B'].each do |team|
    pattern = "Team #{team} has #{number_of_players} player[s]? and #{points} points"
    assert_matching_output(pattern, all_output)
  end
end

def check_each_team_has_the_following_sizes(number_of_players_team_a, number_of_players_team_b)
  ['A', 'B'].each do |team|
    pattern = "Team #{team} has (#{number_of_players_team_a}|#{number_of_players_team_b}) player[s]?"
    assert_matching_output(pattern, all_output)
  end
end