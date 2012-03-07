require 'spec_helper'

describe FootballManager::Team do
  subject { FootballManager::Team.new(players)}

  context 'valid' do
    let(:players) { ['player 1'] }

    its(:players) { should == ['player 1'] }
  end

  context 'invalid with no players' do
    let(:players) { nil }

    it 'raises an error' do
      lambda { subject }.should raise_error(FootballManager::TeamError, 'You cannot create a team with no players')
    end
  end

  context 'with 1 player' do
    let(:player_1) { double('player 1', :skill => 5) }
    let(:players) { [player_1] }

    its(:size) { should == 1 }

    its(:points) { should == 5 }
  end

  context 'with 2 players' do
    let(:player_1) { double('player 1', :skill => 5) }
    let(:player_2) { double('player 2', :skill => 3) }
    let(:players) { [player_1, player_2] }

    its(:size) { should == 2 }

    its(:points) { should == 8 }
  end

end
