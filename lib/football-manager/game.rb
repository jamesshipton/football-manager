module FootballManager
  class Game
    def self.pick_teams(player_data_reference)
      player_data = FootballManager::IOHelper.fetch_player_data(player_data_reference)
      players = FootballManager::PlayersCreator.create_players(player_data)
      teams = FootballManager::TeamPicker.calculate_fair_teams(players)
      FootballManager::TeamSheetCreator.create_team_sheet(teams)
    end
  end
end