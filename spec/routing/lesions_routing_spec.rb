require "spec_helper"

describe LesionsController do
  describe "routing" do

    it "routes to #index" do
      get("/lesions").should route_to("lesions#index")
    end

    it "routes to #new" do
      get("/lesions/new").should route_to("lesions#new")
    end

    it "routes to #show" do
      get("/lesions/1").should route_to("lesions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lesions/1/edit").should route_to("lesions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lesions").should route_to("lesions#create")
    end

    it "routes to #update" do
      put("/lesions/1").should route_to("lesions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lesions/1").should route_to("lesions#destroy", :id => "1")
    end

  end
end
