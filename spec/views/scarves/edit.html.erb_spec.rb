require 'rails_helper'

RSpec.describe "scarves/edit", :type => :view do
  before(:each) do
    @scarf = assign(:scarf, Scarf.create!(
      :title => "MyString",
      :description => "MyString",
      :club_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit scarf form" do
    render

    assert_select "form[action=?][method=?]", scarf_path(@scarf), "post" do

      assert_select "input#scarf_title[name=?]", "scarf[title]"

      assert_select "input#scarf_description[name=?]", "scarf[description]"

      assert_select "input#scarf_club_id[name=?]", "scarf[club_id]"

      assert_select "input#scarf_user_id[name=?]", "scarf[user_id]"
    end
  end
end
