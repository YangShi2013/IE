require 'spec_helper'

describe "topics/index" do
  before(:each) do
    assign(:topics, [
      stub_model(Topic,
        :date => "Date",
        :time => "Time",
        :people => "People",
        :theme => "Theme",
        :preparation => "Preparation",
        :homework => "Homework"
      ),
      stub_model(Topic,
        :date => "Date",
        :time => "Time",
        :people => "People",
        :theme => "Theme",
        :preparation => "Preparation",
        :homework => "Homework"
      )
    ])
  end

  it "renders a list of topics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "People".to_s, :count => 2
    assert_select "tr>td", :text => "Theme".to_s, :count => 2
    assert_select "tr>td", :text => "Preparation".to_s, :count => 2
    assert_select "tr>td", :text => "Homework".to_s, :count => 2
  end
end
