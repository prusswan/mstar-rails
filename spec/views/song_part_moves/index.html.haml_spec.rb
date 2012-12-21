require 'spec_helper'

describe "song_part_moves/index" do
  before(:each) do
    assign(:song_part_moves, [
      stub_model(SongPartMove,
        :song_part_id => 1,
        :order_id => 1,
        :move_id => 3
      ),
      stub_model(SongPartMove,
        :song_part_id => 1,
        :order_id => 2,
        :move_id => 3
      )
    ])

    SongPartMove.any_instance.stub(:song_part).and_return(stub_model(SongPart))
    SongPartMove.any_instance.stub(:move).and_return(stub_model(Move, mstar_id: 123))
    SongPart.any_instance.stub(:description).and_return('test description')
  end

  it "renders a list of song_part_moves" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 'test description', :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 1
    assert_select "tr>td", :text => 123.to_s, :count => 2
  end
end
