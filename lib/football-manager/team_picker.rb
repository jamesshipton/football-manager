module FootballManager
  module TeamPicker
    def self.calculate_fair_teams(players)
      players.partition { |player| players.index(player) < players.size/2 }.collect do |partitioned_players|
        FootballManager::Team.new(partitioned_players)
      end
    end
  end
end