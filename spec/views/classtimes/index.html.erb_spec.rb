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
        :givenVIPTime => "Given Vip Time",
        :takenVIPTime => 5,
        :lastClass => "Last Class",
        :validYear => "Valid Year",
        :validMonth => "Valid Month",
        :validDay => "Valid Day"
      ),
      stub_model(Classtime,
        :name => "Name",
        :password => "Password",
        :totalTime => 1,
        :takenTime => 2,
        :balance => 3,
        :VIPbalance => 4,
        :givenVIPTime => "Given Vip Time",
        :takenVIPTime => 5,
        :lastClass => "Last Class",
        :validYear => "Valid Year",
        :validMonth => "Valid Month",
        :validDay => "Valid Day"
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
    assert_select "tr>td", :text => "Given Vip Time".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Last Class".to_s, :count => 2
    assert_select "tr>td", :text => "Valid Year".to_s, :count => 2
    assert_select "tr>td", :text => "Valid Month".to_s, :count => 2
    assert_select "tr>td", :text => "Valid Day".to_s, :count => 2
  end
end
