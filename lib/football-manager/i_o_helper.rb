module FootballManager
  module IOHelper
    def self.fetch_player_data(player_data_reference)
      File.read(player_data_reference)
    end
  end
end