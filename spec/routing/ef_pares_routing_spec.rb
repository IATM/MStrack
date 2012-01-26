require "spec_helper"

describe EfParesController do
  describe "routing" do

    it "routes to #index" do
      get("/ef_pares").should route_to("ef_pares#index")
    end

    it "routes to #new" do
      get("/ef_pares/new").should route_to("ef_pares#new")
    end

    it "routes to #show" do
      get("/ef_pares/1").should route_to("ef_pares#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ef_pares/1/edit").should route_to("ef_pares#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ef_pares").should route_to("ef_pares#create")
    end

    it "routes to #update" do
      put("/ef_pares/1").should route_to("ef_pares#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ef_pares/1").should route_to("ef_pares#destroy", :id => "1")
    end

  end
end
