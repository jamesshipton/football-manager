require 'spec_helper'

describe FootballManager::Player do
  subject { FootballManager::Player.new(name)}

  context 'valid with a name' do
    let(:name) { 'player 1' }
    its(:name) { should == 'player 1' }
  end

  context 'invalid with no name' do
    let(:name) { nil }

    it 'raises an error' do
      lambda { subject }.should raise_error(FootballManager::PlayerError, 'You cannot create a player with no name')
    end
  end
end
