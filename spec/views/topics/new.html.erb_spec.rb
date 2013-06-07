require 'spec_helper'

describe "topics/new" do
  before(:each) do
    assign(:topic, stub_model(Topic,
      :date => "MyString",
      :time => "MyString",
      :people => "MyString",
      :theme => "MyString"
    ).as_new_record)
  end

  it "renders new topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", topics_path, "post" do
      assert_select "input#topic_date[name=?]", "topic[date]"
      assert_select "input#topic_time[name=?]", "topic[time]"
      assert_select "input#topic_people[name=?]", "topic[people]"
      assert_select "input#topic_theme[name=?]", "topic[theme]"
    end
  end
end
