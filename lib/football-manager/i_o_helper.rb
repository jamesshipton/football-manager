module FootballManager
  class IOHelper
    def self.fetch_player_data(player_data_reference)
      File.readlines(player_data_reference)
    end
  end
end