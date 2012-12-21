require 'spec_helper'

describe "song_parts/new" do
  before(:each) do
    assign(:song_part, stub_model(SongPart,
      :part_id => 1,
      :song_id => 1
    ).as_new_record)
  end

  it "renders new song_part form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => song_parts_path, :method => "post" do
      assert_select "input#song_part_part_id", :name => "song_part[part_id]"
      assert_select "select#song_part_song_id", :name => "song_part[song_id]"
    end
  end
end
