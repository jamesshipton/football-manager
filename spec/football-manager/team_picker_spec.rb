require 'spec_helper'

describe FootballManager::TeamPicker do
  subject { FootballManager::TeamPicker.calculate_fair_teams(players) }

  describe 'calculate_fair_teams' do
    context 'for 2 players each team should have 1 player each' do
      let(:player_1) { double('player 1', :skill => 1) }
      let(:player_2) { double('player 2', :skill => 1) }
      let(:players) { [player_1, player_2] }
      let(:team_a) { double('team a') }
      let(:team_b) { double('team b') }

      before(:each) do
        FootballManager::Team.should_receive(:new).twice.and_return(team_a, team_b)
        team_a.should_receive(:empty?).twice.and_return(true, false)
        team_a.should_receive(:points).once.and_return(1)
        team_b.should_receive(:points).once.and_return(0)
        team_a.should_receive(:<<).with(player_1)
        team_b.should_receive(:<<).with(player_2)
      end

      it { should == [team_a, team_b] }
    end

    context 'for 5 players with a total of 15 points' do
      let(:player_with_5_skill) { double('player 5', :skill => 5) }
      let(:player_with_1_skill) { double('player 1', :skill => 1) }
      let(:player_with_3_skill) { double('player 3', :skill => 3) }
      let(:players) { [ player_with_5_skill,
                        player_with_5_skill,
                        player_with_1_skill,
                        player_with_1_skill,
                        player_with_3_skill] }
      let(:team_a) { double('team a') }
      let(:team_b) { double('team b') }

      before(:each) do
        FootballManager::Team.should_receive(:new).twice.and_return(team_a, team_b)
        team_a.should_receive(:empty?).exactly(5).times.and_return(true, false, false, false, false)
        team_a.should_receive(:points).exactly(4).times.and_return(5, 5, 8, 8)
        team_b.should_receive(:points).exactly(4).times.and_return(0, 5, 6, 7)
        team_a.should_receive(:<<).once.with(player_with_5_skill)
        team_a.should_receive(:<<).once.with(player_with_3_skill)
        team_b.should_receive(:<<).once.with(player_with_5_skill)
        team_b.should_receive(:<<).once.with(player_with_1_skill)
        team_b.should_receive(:<<).once.with(player_with_1_skill)
      end

      it { should == [team_a, team_b] }
    end
  end
end