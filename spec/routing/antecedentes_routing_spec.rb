require "spec_helper"

describe AntecedentesController do
  describe "routing" do

    it "routes to #index" do
      get("/antecedentes").should route_to("antecedentes#index")
    end

    it "routes to #new" do
      get("/antecedentes/new").should route_to("antecedentes#new")
    end

    it "routes to #show" do
      get("/antecedentes/1").should route_to("antecedentes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/antecedentes/1/edit").should route_to("antecedentes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/antecedentes").should route_to("antecedentes#create")
    end

    it "routes to #update" do
      put("/antecedentes/1").should route_to("antecedentes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/antecedentes/1").should route_to("antecedentes#destroy", :id => "1")
    end

  end
end
