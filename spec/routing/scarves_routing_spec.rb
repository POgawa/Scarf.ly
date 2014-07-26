require "rails_helper"

RSpec.describe ScarvesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/scarves").to route_to("scarves#index")
    end

    it "routes to #new" do
      expect(:get => "/scarves/new").to route_to("scarves#new")
    end

    it "routes to #show" do
      expect(:get => "/scarves/1").to route_to("scarves#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/scarves/1/edit").to route_to("scarves#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/scarves").to route_to("scarves#create")
    end

    it "routes to #update" do
      expect(:put => "/scarves/1").to route_to("scarves#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/scarves/1").to route_to("scarves#destroy", :id => "1")
    end

  end
end
