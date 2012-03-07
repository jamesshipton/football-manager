module FootballManager
  class Player

    attr_accessor :name, :skill

    def initialize(name, skill)
      @name = name if valid?(name, 'name')
      @skill = skill.to_i if valid?(skill, 'skill')
    end

    def valid?(attribute, attribute_name)
      attribute.nil? ? fail(FootballManager::PlayerError, "You cannot create a player with no #{attribute_name}") : true
    end
  end
end