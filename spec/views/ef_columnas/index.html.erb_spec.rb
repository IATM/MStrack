require 'spec_helper'

describe "ef_columnas/index" do
  before(:each) do
    assign(:ef_columnas, [
      stub_model(EfColumna,
        :estado => false,
        :signos_meningeos => false,
        :signos_radiculares => false,
        :visit => nil
      ),
      stub_model(EfColumna,
        :estado => false,
        :signos_meningeos => false,
        :signos_radiculares => false,
        :visit => nil
      )
    ])
  end

  it "renders a list of ef_columnas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
