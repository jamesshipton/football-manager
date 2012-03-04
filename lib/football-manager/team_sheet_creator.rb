module FootballManager
  module TeamSheetCreator
    def self.create_team_sheet(teams)
      teams.each do |team|
        puts "Team #{teams.first == team ? 'A' : 'B'} has #{team.size} player"
      end
    end
  end
end