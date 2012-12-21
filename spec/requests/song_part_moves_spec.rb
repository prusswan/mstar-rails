require 'spec_helper'

describe "SongPartMoves" do
  describe "GET /song_part_moves" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get song_part_moves_path
      response.status.should be(200)
    end
  end
end
