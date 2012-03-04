require 'spec_helper'

describe FootballManager::TeamSheetCreator do
  subject { FootballManager::TeamSheetCreator }

  describe 'create_team_sheet' do
    let(:team_1) { double('team 1', :size => 1) }
    let(:team_2) { double('team 2', :size => 1) }

    it 'asks each team for their size' do
      team_1.should_receive(:size).once
      team_2.should_receive(:size).once
      subject.create_team_sheet([team_1, team_2])
    end

    it 'outputs the team size in the teamsheet' do
      $stdout.should_receive(:puts).with("Team A has 1 player")
      $stdout.should_receive(:puts).with("Team B has 1 player")
      subject.create_team_sheet([team_1, team_2])
    end
  end
end