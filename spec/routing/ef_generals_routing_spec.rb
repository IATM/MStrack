require "spec_helper"

describe EfGeneralsController do
  describe "routing" do

    it "routes to #index" do
      get("/ef_generals").should route_to("ef_generals#index")
    end

    it "routes to #new" do
      get("/ef_generals/new").should route_to("ef_generals#new")
    end

    it "routes to #show" do
      get("/ef_generals/1").should route_to("ef_generals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ef_generals/1/edit").should route_to("ef_generals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ef_generals").should route_to("ef_generals#create")
    end

    it "routes to #update" do
      put("/ef_generals/1").should route_to("ef_generals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ef_generals/1").should route_to("ef_generals#destroy", :id => "1")
    end

  end
end
