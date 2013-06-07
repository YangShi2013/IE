require 'spec_helper'

describe "topics/edit" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :date => "MyString",
      :time => "MyString",
      :people => "MyString",
      :theme => "MyString",
      :preparation => "MyString",
      :homework => "MyString"
    ))
  end

  it "renders the edit topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", topic_path(@topic), "post" do
      assert_select "input#topic_date[name=?]", "topic[date]"
      assert_select "input#topic_time[name=?]", "topic[time]"
      assert_select "input#topic_people[name=?]", "topic[people]"
      assert_select "input#topic_theme[name=?]", "topic[theme]"
      assert_select "input#topic_preparation[name=?]", "topic[preparation]"
      assert_select "input#topic_homework[name=?]", "topic[homework]"
    end
  end
end
