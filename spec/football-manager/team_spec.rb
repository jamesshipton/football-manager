require 'spec_helper'

describe FootballManager::Team do
  subject { FootballManager::Team.new}

  context 'without any players' do
    its(:size) { should == 0 }

    its(:points) { should == 0 }

    its(:empty?) { should be_true }

    its(:players) { should == [] }
  end

  context 'a player is added' do
    let(:player_1) { double('player 1', :skill => 5) }

    before(:each) do
      subject << player_1
    end

    its(:size) { should == 1 }

    its(:points) { should == 5 }

    its(:empty?) { should be_false }

    its(:players) { should == [player_1] }
  end

  context '2 players are added' do
    let(:player_A) { double('player A', :name => 'player A', :skill => 5) }
    let(:player_B) { double('player B', :name => 'player B', :skill => 3) }

    before(:each) do
      subject << player_B
      subject << player_A
    end

    its(:size) { should == 2 }

    its(:points) { should == 8 }

    its(:players) { should == [player_B, player_A] }

    its(:players_ordered_by_name) { should == [player_A, player_B] }
  end

end
