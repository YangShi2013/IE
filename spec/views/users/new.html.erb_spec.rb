require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :password => "MyString",
      :birth => "MyString",
      :cellNum => "MyString",
      :homeNum => "MyString",
      :club => "MyString",
      :email => "MyString",
      :address => "MyString",
      :from => "MyString",
      :qq => "MyString",
      :MSN => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_password[name=?]", "user[password]"
      assert_select "input#user_birth[name=?]", "user[birth]"
      assert_select "input#user_cellNum[name=?]", "user[cellNum]"
      assert_select "input#user_homeNum[name=?]", "user[homeNum]"
      assert_select "input#user_club[name=?]", "user[club]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_address[name=?]", "user[address]"
      assert_select "input#user_from[name=?]", "user[from]"
      assert_select "input#user_qq[name=?]", "user[qq]"
      assert_select "input#user_MSN[name=?]", "user[MSN]"
    end
  end
end
