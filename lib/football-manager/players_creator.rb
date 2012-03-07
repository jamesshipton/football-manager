module FootballManager
  class PlayersCreator

    class << self
      attr_accessor :player_match

      def create_players(player_data)
        player_data.collect do |player|
          player =~ player_pattern
          self.player_match = Regexp.last_match
          FootballManager::Player.new(player_name, player_skill)
        end
      end

      def player_pattern
        /^\s*([a-zA-Z0-9]+\s?[a-zA-Z0-9]+)\s*,\s*([1-5]{1})\s*$/
      end

      def player_name
        player_match.captures.first
      end

      def player_skill
        player_match.captures.last
      end
    end
  end
end