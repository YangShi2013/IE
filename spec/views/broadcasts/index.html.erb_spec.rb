require 'spec_helper'

describe "broadcasts/index" do
  before(:each) do
    assign(:broadcasts, [
      stub_model(Broadcast,
        :content => "Content"
      ),
      stub_model(Broadcast,
        :content => "Content"
      )
    ])
  end

  it "renders a list of broadcasts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
