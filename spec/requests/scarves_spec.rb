require 'rails_helper'

RSpec.describe "Scarves", :type => :request do
  describe "GET /scarves" do
    it "works! (now write some real specs)" do
      get scarves_path
      expect(response.status).to be(200)
    end
  end
end
