require 'spec_helper'

describe "ef_generals/index" do
  before(:each) do
    assign(:ef_generals, [
      stub_model(EfGeneral,
        :pa_sistolica => 1,
        :pa_diastolica => 1,
        :fc => 1,
        :peso => 1,
        :talla => 1,
        :hallazgos => "MyText",
        :visit => nil
      ),
      stub_model(EfGeneral,
        :pa_sistolica => 1,
        :pa_diastolica => 1,
        :fc => 1,
        :peso => 1,
        :talla => 1,
        :hallazgos => "MyText",
        :visit => nil
      )
    ])
  end

  it "renders a list of ef_generals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
