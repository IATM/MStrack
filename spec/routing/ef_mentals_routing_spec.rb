require "spec_helper"

describe EfMentalsController do
  describe "routing" do

    it "routes to #index" do
      get("/ef_mentals").should route_to("ef_mentals#index")
    end

    it "routes to #new" do
      get("/ef_mentals/new").should route_to("ef_mentals#new")
    end

    it "routes to #show" do
      get("/ef_mentals/1").should route_to("ef_mentals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ef_mentals/1/edit").should route_to("ef_mentals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ef_mentals").should route_to("ef_mentals#create")
    end

    it "routes to #update" do
      put("/ef_mentals/1").should route_to("ef_mentals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ef_mentals/1").should route_to("ef_mentals#destroy", :id => "1")
    end

  end
end
