module FootballManager
  class Team
    attr_accessor :players

    def initialize(players)
      raise FootballManager::TeamError, 'You cannot create a team with no players' if players.nil?
      @players = players
    end

    def size
      @players.size
    end

    def points
      @players.inject(0) { |total_skill, player| total_skill + player.skill}
    end
  end
end





