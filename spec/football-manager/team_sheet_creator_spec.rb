require 'spec_helper'

describe FootballManager::TeamSheetCreator do
  subject { FootballManager::TeamSheetCreator }

  describe 'create_team_sheet' do
    let(:player_1) { double('player 1', :name => 'player 1', :skill => 1) }
    let(:player_2) { double('player 2', :name => 'player 2', :skill => 1) }
    let(:team_1) { double('team 1', :size => 1, :points => 5, :players => [player_1]) }
    let(:team_2) { double('team 2', :size => 1, :points => 5, :players => [player_2]) }


    it 'asks each team for their size' do
      team_1.should_receive(:size).once
      team_2.should_receive(:size).once
      subject.create_team_sheet([team_1, team_2])
    end

    it 'asks each team for their points' do
      team_1.should_receive(:points).once
      team_2.should_receive(:points).once
      subject.create_team_sheet([team_1, team_2])
    end

    it 'outputs the team size in the teamsheet' do
      $stdout.should_receive(:puts).with("Team A has 1 player and 5 points")
      $stdout.should_receive(:puts).with("player 1")
      $stdout.should_receive(:puts).with("Team B has 1 player and 5 points")
      $stdout.should_receive(:puts).with("player 2")
      subject.create_team_sheet([team_1, team_2])
    end
  end
end