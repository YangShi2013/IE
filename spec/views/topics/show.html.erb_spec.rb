require 'spec_helper'

describe "topics/show" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :year => "Year",
      :month => "Month",
      :day => "Day",
      :startTime => "Start Time",
      :endTime => "End Time",
      :people => "People",
      :theme => "Theme",
      :preparation => "Preparation",
      :homework => "Homework"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Year/)
    rendered.should match(/Month/)
    rendered.should match(/Day/)
    rendered.should match(/Start Time/)
    rendered.should match(/End Time/)
    rendered.should match(/People/)
    rendered.should match(/Theme/)
    rendered.should match(/Preparation/)
    rendered.should match(/Homework/)
  end
end
