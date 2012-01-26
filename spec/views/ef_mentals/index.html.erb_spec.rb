require 'spec_helper'

describe "ef_mentals/index" do
  before(:each) do
    assign(:ef_mentals, [
      stub_model(EfMental,
        :conciencia => false,
        :atencion => false,
        :memoria => false,
        :lenguaje => "Lenguaje",
        :visit => nil
      ),
      stub_model(EfMental,
        :conciencia => false,
        :atencion => false,
        :memoria => false,
        :lenguaje => "Lenguaje",
        :visit => nil
      )
    ])
  end

  it "renders a list of ef_mentals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lenguaje".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
