require 'spec_helper'

describe "classtimes/index" do
  before(:each) do
    assign(:classtimes, [
      stub_model(Classtime,
        :name => "Name",
        :password => "Password",
        :totalTime => 1,
        :takenTime => 2,
        :balance => 3,
        :VIPbalance => 4,
        :givenVIPtime => "Given Vi Ptime",
        :takenVIPTime => 5,
        :lastClass => "Last Class",
        :validDate => "Valid Date"
      ),
      stub_model(Classtime,
        :name => "Name",
        :password => "Password",
        :totalTime => 1,
        :takenTime => 2,
        :balance => 3,
        :VIPbalance => 4,
        :givenVIPtime => "Given Vi Ptime",
        :takenVIPTime => 5,
        :lastClass => "Last Class",
        :validDate => "Valid Date"
      )
    ])
  end

  it "renders a list of classtimes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Given Vi Ptime".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Last Class".to_s, :count => 2
    assert_select "tr>td", :text => "Valid Date".to_s, :count => 2
  end
end
