require 'spec_helper'

describe "song_part_moves/new" do
  before(:each) do
    assign(:song_part_move, stub_model(SongPartMove,
      :song_part_id => 1,
      :order_id => 1,
      :move_id => 1
    ).as_new_record)
  end

  it "renders new song_part_move form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => song_part_moves_path, :method => "post" do
      assert_select "select#song_part_move_song_part_id", :name => "song_part_move[song_part_id]"
      assert_select "input#song_part_move_order_id", :name => "song_part_move[order_id]"
      assert_select "select#song_part_move_move_id", :name => "song_part_move[move_id]"
    end
  end
end
