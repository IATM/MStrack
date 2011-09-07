require 'spec_helper'

describe "lesion_locations/show.html.erb" do
  before(:each) do
    @lesion_location = assign(:lesion_location, stub_model(LesionLocation,
      :region => "Region",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Region/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Location/)
  end
end
