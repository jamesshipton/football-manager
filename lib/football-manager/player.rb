module FootballManager
  class Player

    attr_accessor :name

    def initialize(name)
      raise FootballManager::PlayerError, 'You cannot create a player with no name' if name.nil?
      @name = name
    end
  end
end