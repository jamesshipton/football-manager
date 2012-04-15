def check_both_teams_are_equal(number_of_players, points)
  ['Bibs', 'Colours'].each do |team|
    pattern = "Team #{team} have #{number_of_players} player[s]? and #{points} points"
    assert_matching_output(pattern, all_output)
  end
end

def check_team_has_the_following(number_of_players, points)
  pattern = "Team (Bibs|Colours) have #{number_of_players} player[s]? and #{points} points"
  assert_matching_output(pattern, all_output)
end