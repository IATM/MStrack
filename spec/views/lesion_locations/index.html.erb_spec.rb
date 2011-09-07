require 'spec_helper'

describe "lesion_locations/index.html.erb" do
  before(:each) do
    assign(:lesion_locations, [
      stub_model(LesionLocation,
        :region => "Region",
        :location => "Location"
      ),
      stub_model(LesionLocation,
        :region => "Region",
        :location => "Location"
      )
    ])
  end

  it "renders a list of lesion_locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
