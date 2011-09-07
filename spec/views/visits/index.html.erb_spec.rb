require 'spec_helper'

describe "visits/index.html.erb" do
  before(:each) do
    assign(:visits, [
      stub_model(Visit,
        :ref_physician => "Ref Physician",
        :user_id => 1,
        :imaging_center => "Imaging Center"
      ),
      stub_model(Visit,
        :ref_physician => "Ref Physician",
        :user_id => 1,
        :imaging_center => "Imaging Center"
      )
    ])
  end

  it "renders a list of visits" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ref Physician".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Imaging Center".to_s, :count => 2
  end
end
