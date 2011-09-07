require 'spec_helper'

describe "lesions/index.html.erb" do
  before(:each) do
    assign(:lesions, [
      stub_model(Lesion,
        :laterality => "Laterality",
        :shape => "Shape",
        :size => 1,
        :enhancement => "Enhancement",
        :type => "Type"
      ),
      stub_model(Lesion,
        :laterality => "Laterality",
        :shape => "Shape",
        :size => 1,
        :enhancement => "Enhancement",
        :type => "Type"
      )
    ])
  end

  it "renders a list of lesions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Laterality".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Shape".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Enhancement".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
