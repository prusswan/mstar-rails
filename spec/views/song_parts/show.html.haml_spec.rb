require 'spec_helper'

describe "song_parts/show" do
  before(:each) do
    @song_part = assign(:song_part, stub_model(SongPart,
      :part_id => 1,
      :song_id => 2
    ))
    @song_part.stub!(:song).and_return(stub_model(Song, id: 2, title: 'test song'))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
