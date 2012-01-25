require "spec_helper"

describe EfColumnasController do
  describe "routing" do

    it "routes to #index" do
      get("/ef_columnas").should route_to("ef_columnas#index")
    end

    it "routes to #new" do
      get("/ef_columnas/new").should route_to("ef_columnas#new")
    end

    it "routes to #show" do
      get("/ef_columnas/1").should route_to("ef_columnas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ef_columnas/1/edit").should route_to("ef_columnas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ef_columnas").should route_to("ef_columnas#create")
    end

    it "routes to #update" do
      put("/ef_columnas/1").should route_to("ef_columnas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ef_columnas/1").should route_to("ef_columnas#destroy", :id => "1")
    end

  end
end
