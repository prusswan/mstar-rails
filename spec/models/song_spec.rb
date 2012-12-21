require 'spec_helper'

describe Song do
  let(:song) { Song.new }
  subject { song }

  it { should respond_to(:song_parts) }
  it { should respond_to(:moves) }
end
