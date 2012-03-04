module FootballManager
  module PlayersCreator
    def self.create_players(player_data)
      player_data.collect do |player|
        FootballManager::Player.new(player)
      end
    end
  end
end