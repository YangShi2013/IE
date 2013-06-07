require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
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
      :MSN => "Msn"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Password/)
    rendered.should match(/Birth/)
    rendered.should match(/Cell Num/)
    rendered.should match(/Home Num/)
    rendered.should match(/Club/)
    rendered.should match(/Email/)
    rendered.should match(/Address/)
    rendered.should match(/From/)
    rendered.should match(/Qq/)
    rendered.should match(/Msn/)
  end
end
