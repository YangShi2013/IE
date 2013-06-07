require 'spec_helper'

describe "classtimes/show" do
  before(:each) do
    @classtime = assign(:classtime, stub_model(Classtime,
      :name => "Name",
      :password => "Password",
      :totalTime => 1,
      :takenTime => 2,
      :balance => 3,
      :VIPbalance => 4,
      :takenVIPTime => 5,
      :lastClass => "Last Class",
      :validDate => "Valid Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Password/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/Last Class/)
    rendered.should match(/Valid Date/)
  end
end
