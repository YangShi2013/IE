require 'spec_helper'

describe "broadcasts/show" do
  before(:each) do
    @broadcast = assign(:broadcast, stub_model(Broadcast,
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
  end
end
