require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :password => "Password",
        :birth => "Birth",
        :cellNum => "Cell Num",
        :homeNum => "Home Num",
        :club => "Club",
        :email => "Email",
        :address => "Address",
        :from => "From",
        :qq => "Qq",
        :MSN => "Msn",
        :location => "Location",
        :condition => "Condition"
      ),
      stub_model(User,
        :name => "Name",
        :password => "Password",
        :birth => "Birth",
        :cellNum => "Cell Num",
        :homeNum => "Home Num",
        :club => "Club",
        :email => "Email",
        :address => "Address",
        :from => "From",
        :qq => "Qq",
        :MSN => "Msn",
        :location => "Location",
        :condition => "Condition"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Birth".to_s, :count => 2
    assert_select "tr>td", :text => "Cell Num".to_s, :count => 2
    assert_select "tr>td", :text => "Home Num".to_s, :count => 2
    assert_select "tr>td", :text => "Club".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => "Qq".to_s, :count => 2
    assert_select "tr>td", :text => "Msn".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Condition".to_s, :count => 2
  end
end
