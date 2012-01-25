require "spec_helper"

describe EfPsiqusController do
  describe "routing" do

    it "routes to #index" do
      get("/ef_psiqus").should route_to("ef_psiqus#index")
    end

    it "routes to #new" do
      get("/ef_psiqus/new").should route_to("ef_psiqus#new")
    end

    it "routes to #show" do
      get("/ef_psiqus/1").should route_to("ef_psiqus#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ef_psiqus/1/edit").should route_to("ef_psiqus#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ef_psiqus").should route_to("ef_psiqus#create")
    end

    it "routes to #update" do
      put("/ef_psiqus/1").should route_to("ef_psiqus#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ef_psiqus/1").should route_to("ef_psiqus#destroy", :id => "1")
    end

  end
end
