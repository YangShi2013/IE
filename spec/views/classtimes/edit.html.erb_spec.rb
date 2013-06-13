require 'spec_helper'

describe "classtimes/edit" do
  before(:each) do
    @classtime = assign(:classtime, stub_model(Classtime,
      :name => "MyString",
      :password => "MyString",
      :totalTime => 1,
      :takenTime => 1,
      :balance => 1,
      :VIPbalance => 1,
      :givenVIPtime => "MyString",
      :takenVIPTime => 1,
      :lastClass => "MyString",
      :validDate => "MyString"
    ))
  end

  it "renders the edit classtime form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", classtime_path(@classtime), "post" do
      assert_select "input#classtime_name[name=?]", "classtime[name]"
      assert_select "input#classtime_password[name=?]", "classtime[password]"
      assert_select "input#classtime_totalTime[name=?]", "classtime[totalTime]"
      assert_select "input#classtime_takenTime[name=?]", "classtime[takenTime]"
      assert_select "input#classtime_balance[name=?]", "classtime[balance]"
      assert_select "input#classtime_VIPbalance[name=?]", "classtime[VIPbalance]"
      assert_select "input#classtime_givenVIPtime[name=?]", "classtime[givenVIPtime]"
      assert_select "input#classtime_takenVIPTime[name=?]", "classtime[takenVIPTime]"
      assert_select "input#classtime_lastClass[name=?]", "classtime[lastClass]"
      assert_select "input#classtime_validDate[name=?]", "classtime[validDate]"
    end
  end
end
