require 'spec_helper'

describe Move do
  let(:move) { Move.new(mstar_id: 123, sequence: '123') }

  it 'should have a valid mstar_id' do
    move.mstar_id = 'asd'
    move.should_not be_valid

    move.mstar_id = 124
    move.should be_valid
  end

  it 'should have a unique mstar_id' do
    Move.create(mstar_id: 123, sequence: '1')
    move.should_not be_valid
  end

  it 'should have a valid sequence' do
    move.sequence = 'abc'
    move.should_not be_valid

    move.sequence = '123'
    move.should be_valid
  end  

  describe 'advanced sequence validation' do
    it 'valid case 1' do
      move.sequence = '123()'
      move.should be_valid 
    end

    it 'valid case 2' do
      move.sequence = '[(0][)0]'
      move.should be_valid
    end

    it 'valid case 2' do
      move.sequence = '[(0][)0]'
      move.should be_valid
    end

    it 'valid case 3' do
      move.sequence = '64428446464(4)66134()'
      move.should be_valid
    end    

    it 'valid case 4' do
      move.sequence = '()64428446464()(4)66134'
      move.should be_valid
    end

    it 'valid case 5' do
      move.sequence = '1 2 3 '
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
