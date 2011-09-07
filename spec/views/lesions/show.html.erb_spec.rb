require 'spec_helper'

describe "lesions/show.html.erb" do
  before(:each) do
    @lesion = assign(:lesion, stub_model(Lesion,
      :laterality => "Laterality",
      :shape => "Shape",
      :size => 1,
      :enhancement => "Enhancement",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Laterality/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Shape/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Enhancement/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
  end
end
