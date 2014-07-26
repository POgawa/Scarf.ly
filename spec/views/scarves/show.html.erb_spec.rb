require 'rails_helper'

RSpec.describe "scarves/show", :type => :view do
  before(:each) do
    @scarf = assign(:scarf, Scarf.create!(
      :title => "Title",
      :description => "Description",
      :club_id => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
