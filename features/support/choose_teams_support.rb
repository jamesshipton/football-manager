def check_both_teams_are_equal(number_of_players, points)
  ['A', 'B'].each do |team|
    pattern = "Team #{team} has #{number_of_players} player[s]? and #{points} points"
    assert_matching_output(pattern, all_output)
  end
end

def check_team_has_the_following(number_of_players, points)
    pattern = "Team (A|B) has #{number_of_players} player[s]? and #{points} points"
    assert_matching_output(pattern, all_output)
end