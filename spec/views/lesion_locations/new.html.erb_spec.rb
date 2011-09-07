require 'spec_helper'

describe "lesion_locations/new.html.erb" do
  before(:each) do
    assign(:lesion_location, stub_model(LesionLocation,
      :region => "MyString",
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new lesion_location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lesion_locations_path, :method => "post" do
      assert_select "input#lesion_location_region", :name => "lesion_location[region]"
      assert_select "input#lesion_location_location", :name => "lesion_location[location]"
    end
  end
end
