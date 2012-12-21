require 'spec_helper'

describe "moves/new" do
  before(:each) do
    assign(:move, stub_model(Move,
      :mstar_id => 1,
      :sequence => "MyString"
    ).as_new_record)
  end

  it "renders new move form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moves_path, :method => "post" do
      assert_select "input#move_mstar_id", :name => "move[mstar_id]"
      assert_select "input#move_sequence", :name => "move[sequence]"
    end
  end
end
