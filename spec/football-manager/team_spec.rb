require 'spec_helper'

describe FootballManager::Team do
  subject { FootballManager::Team.new(players)}

  context 'valid with players' do
    let(:players) { ['player 1'] }
    its(:players) { should == ['player 1'] }
    its(:size) { should == 1 }
  end

  context 'invalid with no players' do
    let(:players) { nil }

    it 'raises an error' do
      lambda { subject }.should raise_error(FootballManager::TeamError, 'You cannot create a team with no players')
    end
  end
end
