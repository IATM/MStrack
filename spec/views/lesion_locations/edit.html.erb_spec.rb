require 'spec_helper'

describe "lesion_locations/edit.html.erb" do
  before(:each) do
    @lesion_location = assign(:lesion_location, stub_model(LesionLocation,
      :region => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit lesion_location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lesion_locations_path(@lesion_location), :method => "post" do
      assert_select "input#lesion_location_region", :name => "lesion_location[region]"
      assert_select "input#lesion_location_location", :name => "lesion_location[location]"
    end
  end
end
