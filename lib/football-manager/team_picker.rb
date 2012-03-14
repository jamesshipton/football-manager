module FootballManager
  class TeamPicker
    def self.calculate_fair_teams(players)
      # players_in_descending_order = players.sort { |a,b| b.skill <=> a.skill }
      players_in_descending_order = []

      5.downto(1) do |i|
        players_in_descending_order <<
          players.select { |player| player.skill == i }.sort_by {rand}
      end

      team_a, team_b  = FootballManager::Team.new, FootballManager::Team.new

      players_in_descending_order.flatten.partition do |player|
        if team_a.empty? || team_a.points <= team_b.points
          team_a << player
        else
          team_b << player
        end
      end

      return [team_a, team_b]
    end
  end
end

