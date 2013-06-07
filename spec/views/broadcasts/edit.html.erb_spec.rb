require 'spec_helper'

describe "broadcasts/edit" do
  before(:each) do
    @broadcast = assign(:broadcast, stub_model(Broadcast,
      :content => "MyString"
    ))
  end

  it "renders the edit broadcast form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", broadcast_path(@broadcast), "post" do
      assert_select "input#broadcast_content[name=?]", "broadcast[content]"
    end
  end
end
