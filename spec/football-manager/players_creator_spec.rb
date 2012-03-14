require 'spec_helper'

describe FootballManager::PlayersCreator do
  subject { FootballManager::PlayersCreator }

  describe 'create_players' do
    let(:player_1) { 'player 1, 5' }
    let(:player_2) { 'player 2, 5' }
    let(:player_1_name) { 'player 1' }
    let(:player_2_name) { 'player 2' }
    let(:player_1_skill) { '5' }
    let(:player_2_skill) { '5' }
    let(:player_data) { [player_1, player_2, ''] }

    it 'iterate through the player details, creating new players' do
      FootballManager::Player.should_receive(:new).once.with(player_1_name, player_1_skill)
      FootballManager::Player.should_receive(:new).once.with(player_2_name, player_2_skill)
      subject.create_players(player_data)
    end
  end
end