module FootballManager
  class Team
    def initialize
      @players = []
    end

    def <<(player)
      @players << player
    end

    def empty?
      @players.empty?
    end

    def size
      @players.size
    end

    def points
      @players.inject(0) { |total_skill, player| total_skill + player.skill}
    end
  end
end





