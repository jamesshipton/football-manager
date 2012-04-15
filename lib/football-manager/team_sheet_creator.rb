module FootballManager
  class TeamSheetCreator
    def self.create_team_sheet(teams)
      teams.each do |team|
        puts "Team #{teams.first == team ? 'Bibs' : 'Colours'} have #{team.size} player#{'s' if team.size > 1} and #{team.points} points"
      end
      puts ''
      teams.each do |team|
        puts "Team #{teams.first == team ? 'Bibs' : 'Colours'}"
        puts '--------'
        team.players_ordered_by_name.each do |player|
          puts player.name
        end
        puts ''
      end
    end
  end
end