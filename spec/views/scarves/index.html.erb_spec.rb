require 'rails_helper'

RSpec.describe "scarves/index", :type => :view do
  before(:each) do
    assign(:scarves, [
      Scarf.create!(
        :title => "Title",
        :description => "Description",
        :club_id => 1,
        :user_id => 2
      ),
      Scarf.create!(
        :title => "Title",
        :description => "Description",
        :club_id => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of scarves" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
