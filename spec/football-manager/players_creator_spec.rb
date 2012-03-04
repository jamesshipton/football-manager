require 'spec_helper'

describe FootballManager::PlayersCreator do
  subject { FootballManager::PlayersCreator }

  describe 'create_players' do
    let(:player_1) { double('player 1') }
    let(:player_2) { double('player 2') }
    let(:player_data) { [player_1, player_2] }

    it 'iterate through the player details, creating new players' do
      FootballManager::Player.should_receive(:new).once.with(player_1)
      FootballManager::Player.should_receive(:new).once.with(player_2)
      subject.create_players(player_data)
    end
  end
end