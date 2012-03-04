require 'spec_helper'

describe FootballManager::TeamPicker do
  subject { FootballManager::TeamPicker }

  describe 'calculate_fair_teams' do
    context 'for 2 players each team should have 1 player each' do
      let(:player_1) { double('player 1') }
      let(:player_2) { double('player 2') }
      let(:players) { [player_1, player_2] }
      let(:team_a) { double('team a') }
      let(:team_b) { double('team b') }

      it 'tells each Team to be created with 1 player' do
        FootballManager::Team.should_receive(:new).once.with([player_1]).and_return(team_a)
        FootballManager::Team.should_receive(:new).once.with([player_2]).and_return(team_b)
        subject.calculate_fair_teams(players)
      end

      it 'returns the two teams' do
        FootballManager::Team.stub(:new).with([player_1]).and_return(team_a)
        FootballManager::Team.stub(:new).with([player_2]).and_return(team_b)
        subject.calculate_fair_teams(players).should == [team_a, team_b]
      end
    end
  end
end