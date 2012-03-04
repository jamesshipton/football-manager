require 'spec_helper'

describe FootballManager::Game do
  subject { FootballManager::Game }

  describe 'pick_teams' do
    let(:player_data) { double('player data') }
    let(:players) { double('players') }
    let(:teams) { double('teams') }

    it 'tells the PlayersCreator to create the players from the input file' do
      FootballManager::PlayersCreator.should_receive(:create_players).with(player_data).and_return(players)
      subject.pick_teams(player_data)
    end

    it 'tells the TeamPicker to pick the fairest teams from the available players' do
      FootballManager::PlayersCreator.stub(:create_players => players)
      FootballManager::TeamPicker.should_receive(:calculate_fair_teams).with(players).and_return(teams)
      subject.pick_teams(player_data)
    end

    it 'tells the TeamSheetCreator to create a teamsheet from the teams' do
      FootballManager::PlayersCreator.stub(:create_players => players)
      FootballManager::TeamPicker.stub(:calculate_fair_teams => teams)
      FootballManager::TeamSheetCreator.should_receive(:create_team_sheet).with(teams)
      subject.pick_teams(player_data)
    end

  end


end