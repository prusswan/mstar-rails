require 'spec_helper'

describe "moves/edit" do
  before(:each) do
    @move = assign(:move, stub_model(Move,
      :mstar_id => 1,
      :sequence => "MyString"
    ))
  end

  it "renders the edit move form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moves_path(@move), :method => "post" do
      assert_select "input#move_mstar_id", :name => "move[mstar_id]"
      assert_select "input#move_sequence", :name => "move[sequence]"
    end
  end
end
