require 'spec_helper'

describe "moves/index" do
  before(:each) do
    assign(:moves, [
      stub_model(Move,
        :mstar_id => 1,
        :sequence => "Sequence"
      ),
      stub_model(Move,
        :mstar_id => 1,
        :sequence => "Sequence"
      )
    ])
  end

  it "renders a list of moves" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Sequence".to_s, :count => 2
  end
end
