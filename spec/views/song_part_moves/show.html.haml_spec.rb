require 'spec_helper'

describe "song_part_moves/show" do
  before(:each) do
    @song_part_move = assign(:song_part_move, stub_model(SongPartMove,
      :song_part_id => 1,
      :order_id => 2,
      :move_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
