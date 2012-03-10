module FootballManager
  module TeamSheetCreator
    def self.create_team_sheet(teams)
      teams.each do |team|
        puts "Team #{teams.first == team ? 'A' : 'B'} has #{team.size} player and #{team.points} points"
        team.players_ordered_by_name.each do |player|
          puts player.name
        end
      end
    end
  end
end