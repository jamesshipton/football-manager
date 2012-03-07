require 'spec_helper'

describe FootballManager::Player do
  subject { FootballManager::Player.new(name, skill)}

  context 'valid' do
    let(:name) { 'player 1' }
    let(:skill) { '5' }

    its(:name) { should == 'player 1' }
    its(:skill) { should == 5 }
  end

  context 'invalid with no name' do
    let(:name) { nil }
    let(:skill) { '5' }

    it 'raises an error' do
      lambda { subject }.should raise_error(FootballManager::PlayerError, 'You cannot create a player with no name')
    end
  end

  context 'invalid with no skill' do
    let(:name) { 'player 1' }
    let(:skill) { nil }

    it 'raises an error' do
      lambda { subject }.should raise_error(FootballManager::PlayerError, 'You cannot create a player with no skill')
    end
  end
end
