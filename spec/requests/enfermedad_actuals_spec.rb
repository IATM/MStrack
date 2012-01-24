require 'spec_helper'

describe "EnfermedadActuals" do
  describe "GET /enfermedad_actuals" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get enfermedad_actuals_path
      response.status.should be(200)
    end
  end
end
