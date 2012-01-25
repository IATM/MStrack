require 'spec_helper'

describe "EfGenerals" do
  describe "GET /ef_generals" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get ef_generals_path
      response.status.should be(200)
    end
  end
end
