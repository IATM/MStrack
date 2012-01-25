require 'spec_helper'

describe "ef_mentals/show" do
  before(:each) do
    @ef_mental = assign(:ef_mental, stub_model(EfMental,
      :conciencia => false,
      :atencion => false,
      :memoria => false,
      :lenguaje => "Lenguaje",
      :visit => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lenguaje/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
