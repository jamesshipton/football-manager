require 'spec_helper'

describe FootballManager::Game do
  subject { FootballManager::Game }

  describe 'pick_teams' do
    let(:player_data_reference) { double('player data reference') }
    let(:player_data) { double('player data') }
    let(:players) { double('players') }
    let(:teams) { double('teams') }

    it 'tells the IOHelper to fetch the player data' do
      FootballManager::IOHelper.should_receive(:fetch_player_data).with(player_data_reference).and_return(player_data)
      subject.pick_teams(player_data_reference)
    end

    it 'tells the PlayersCreator to create the players from the input file' do
      FootballManager::IOHelper.stub(:fetch_player_data => player_data)
      FootballManager::PlayersCreator.should_receive(:create_players).with(player_data).and_return(players)
      subject.pick_teams(player_data_reference)
    end

    it 'tells the TeamPicker to pick the fairest teams from the available players' do
      FootballManager::IOHelper.stub(:fetch_player_data => player_data)
      FootballManager::PlayersCreator.stub(:create_players => players)
      FootballManager::TeamPicker.should_receive(:calculate_fair_teams).with(players).and_return(teams)
      subject.pick_teams(player_data_reference)
    end

    it 'tells the TeamSheetCreator to create a teamsheet from the teams' do
      FootballManager::IOHelper.stub(:fetch_player_data => player_data)
      FootballManager::PlayersCreator.stub(:create_players => players)
      FootballManager::TeamPicker.stub(:calculate_fair_teams => teams)
      FootballManager::TeamSheetCreator.should_receive(:create_team_sheet).with(teams)
      subject.pick_teams(player_data_reference)
    end

  end


end