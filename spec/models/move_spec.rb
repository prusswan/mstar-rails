require 'spec_helper'

describe Move do
  let(:move) { Move.new }

  it 'should have a valid mstar_id' do
    move.sequence = '123'
    move.should_not be_valid

    move.mstar_id = 'asd'
    move.should_not be_valid

    move.mstar_id = 124
    move.should be_valid
  end

  it 'should have a valid sequence' do
    move.mstar_id = 124
    move.should_not be_valid

    move.sequence = 'abc'
    move.should_not be_valid

    move.sequence = '123'
    move.should be_valid
  end  

  describe 'advanced sequence validation' do
    before do
      move.mstar_id = 124
    end

    it 'valid case 1' do
      move.sequence = '123()'
      move.should be_valid 
    end

    it 'valid case 2' do
      move.sequence = '[(0][)0]'
      move.should be_valid
    end

    it 'invalid case 1' do
      move.sequence = '(123()'
      move.should_not be_valid 
    end

    it 'invalid case 2' do
      move.sequence = '[)0][(9]'
      move.should_not be_valid
    end    
  end
end
