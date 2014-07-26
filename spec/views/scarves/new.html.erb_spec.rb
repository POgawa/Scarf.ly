require 'rails_helper'

RSpec.describe "scarves/new", :type => :view do
  before(:each) do
    assign(:scarf, Scarf.new(
      :title => "MyString",
      :description => "MyString",
      :club_id => 1,
      :user_id => 1
    ))
  end

  it "renders new scarf form" do
    render

    assert_select "form[action=?][method=?]", scarves_path, "post" do

      assert_select "input#scarf_title[name=?]", "scarf[title]"

      assert_select "input#scarf_description[name=?]", "scarf[description]"

      assert_select "input#scarf_club_id[name=?]", "scarf[club_id]"

      assert_select "input#scarf_user_id[name=?]", "scarf[user_id]"
    end
  end
end
