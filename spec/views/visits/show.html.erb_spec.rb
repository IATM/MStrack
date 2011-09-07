require 'spec_helper'

describe "visits/show.html.erb" do
  before(:each) do
    @visit = assign(:visit, stub_model(Visit,
      :ref_physician => "Ref Physician",
      :user_id => 1,
      :imaging_center => "Imaging Center"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ref Physician/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Imaging Center/)
  end
end
