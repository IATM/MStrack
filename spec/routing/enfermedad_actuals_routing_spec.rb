require "spec_helper"

describe EnfermedadActualsController do
  describe "routing" do

    it "routes to #index" do
      get("/enfermedad_actuals").should route_to("enfermedad_actuals#index")
    end

    it "routes to #new" do
      get("/enfermedad_actuals/new").should route_to("enfermedad_actuals#new")
    end

    it "routes to #show" do
      get("/enfermedad_actuals/1").should route_to("enfermedad_actuals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/enfermedad_actuals/1/edit").should route_to("enfermedad_actuals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/enfermedad_actuals").should route_to("enfermedad_actuals#create")
    end

    it "routes to #update" do
      put("/enfermedad_actuals/1").should route_to("enfermedad_actuals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/enfermedad_actuals/1").should route_to("enfermedad_actuals#destroy", :id => "1")
    end

  end
end
