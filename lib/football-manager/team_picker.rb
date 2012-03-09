module FootballManager
  module TeamPicker
    def self.calculate_fair_teams(players)
      players_in_descending_order = players.sort { |a,b| b.skill <=> a.skill }
      team_a, team_b  = FootballManager::Team.new, FootballManager::Team.new

      players_in_descending_order.partition do |player|
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

