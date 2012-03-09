require 'spec_helper'

describe FootballManager::Team do
  subject { FootballManager::Team.new}

  context 'without any players' do
    its(:size) { should == 0 }

    its(:points) { should == 0 }

    its(:empty?) { should be_true }
  end

  context 'a player is added' do
    let(:player_1) { double('player 1', :skill => 5) }

    before(:each) do
      subject << player_1
    end

    its(:size) { should == 1 }

    its(:points) { should == 5 }

    its(:empty?) { should be_false }
  end

  context '2 players are added' do
    let(:player_1) { double('player 1', :skill => 5) }
    let(:player_2) { double('player 2', :skill => 3) }

    before(:each) do
      subject << player_1
      subject << player_2
    end

    its(:size) { should == 2 }

    its(:points) { should == 8 }
  end

end
