require "spec_helper"

describe LesionLocationsController do
  describe "routing" do

    it "routes to #index" do
      get("/lesion_locations").should route_to("lesion_locations#index")
    end

    it "routes to #new" do
      get("/lesion_locations/new").should route_to("lesion_locations#new")
    end

    it "routes to #show" do
      get("/lesion_locations/1").should route_to("lesion_locations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lesion_locations/1/edit").should route_to("lesion_locations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lesion_locations").should route_to("lesion_locations#create")
    end

    it "routes to #update" do
      put("/lesion_locations/1").should route_to("lesion_locations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lesion_locations/1").should route_to("lesion_locations#destroy", :id => "1")
    end

  end
end
