require 'spec_helper'

describe "song_parts/index" do
  before(:each) do
    assign(:song_parts, [
      stub_model(SongPart,
        :part_id => 1,
        :song_id => 2
      ),
      stub_model(SongPart,
        :part_id => 1,
        :song_id => 2
      )
    ])
  end

  it "renders a list of song_parts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
