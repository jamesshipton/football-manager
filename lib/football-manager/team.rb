module FootballManager
  class Team
    attr_reader :players

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

    def players_ordered_by_name
      @players.sort_by { |player| player.name }
    end
  end
end





