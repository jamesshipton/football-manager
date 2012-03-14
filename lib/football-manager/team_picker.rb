module FootballManager
  class TeamPicker
    def self.calculate_fair_teams(players)
      team_a, team_b  = FootballManager::Team.new, FootballManager::Team.new

      players_in_descending_order(players).each do |player|
        if team_a.empty? || team_a.points <= team_b.points
          team_a << player
        else
          team_b << player
        end
      end

      return [team_a, team_b]
    end

    private
      def self.players_in_descending_order(players)
        5.downto(1).collect do |i|
          players.select { |player| player.skill == i }.sort_by {rand}
        end.flatten!
      end
  end
end

